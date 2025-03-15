package states.menus;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.text.FlxText;
import flixel.FlxState;
import flixel.input.keyboard.FlxKey;
import states.TitleState; // Для возврата в главное меню

class RYTPTitleState extends FlxState {
    var titleText:FlxText;

    override public function create():Void {
        super.create();

        // Фон
        var bg:FlxSprite = new FlxSprite();
        bg.makeGraphic(FlxG.width, FlxG.height, 0xFF000000); // Черный фон
        add(bg);

        // Текст заголовка
        titleText = new FlxText(0, FlxG.height / 2 - 20, FlxG.width, "RYTP Title State", 32);
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
