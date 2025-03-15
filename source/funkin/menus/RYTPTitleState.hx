package states.menus;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.text.FlxText;
import flixel.FlxState;
import flixel.input.keyboard.FlxKey;
import states.TitleState; // Для возврата в главное меню
import states.menus.RYTPTitleState;

class RYTPTitleState extends FlxState {
    var titleText:FlxText;

    override public function create():Void {
        super.create();

        // Фон
        var bg:FlxSprite = new FlxSprite();
        bg.makeGraphic(FlxG.width, FlxG.height, 0xFF000000); // Черный фон
        add(bg);

        // Текст заголовка
        titleText = new FlxText(0, FlxG.height / 2 - 20, FlxG.width, "RYTP Funk", 32);
        titleText.alignment = "center";
        add(titleText);
    }

    override public function update(elapsed:Float):Void {
        super.update(elapsed);

        // Вернуться в TitleState при нажатии на Enter
        if (FlxG.keys.justPressed.ENTER) {
            FlxG.switchState(new TitleState());
        }
    }
}

FlxG.switchState(new RYTPTitleState());

FlxG.sound.playMusic(Paths.music('freakyMenu'), 1.0);

var logo:FlxSprite = new FlxSprite(FlxG.width / 2 - 100, 100, Paths.image("logo"));
add(logo);
