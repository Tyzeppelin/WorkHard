package gui;

import controlers.LoadHandler;
import controlers.NewHandler;
import controlers.SaveHandler;
import javafx.scene.control.Menu;
import javafx.scene.control.MenuBar;
import javafx.scene.control.MenuItem;
import javafx.scene.control.SeparatorMenuItem;
import javafx.scene.input.KeyCombination;

public class MenuBox {
	private MainWindow main;
	private MenuBar box;
	
	public MenuBox(MainWindow main){
		this.main = main;
		Menu fileMenu = new Menu("File");
		MenuItem newItem = new MenuItem("New ...");
		newItem.setAccelerator(KeyCombination.keyCombination("Ctrl+N"));
		newItem.setOnAction(new NewHandler(main.getMainBox(), 0));
		MenuItem saveItem = new MenuItem("Save");
		saveItem.setAccelerator(KeyCombination.keyCombination("Ctrl+S"));
		saveItem.setOnAction(new SaveHandler(main.getShelter()));
		MenuItem loadItem = new MenuItem("Load from files ...");
		loadItem.setAccelerator(KeyCombination.keyCombination("Ctrl+O"));
		loadItem.setOnAction(new LoadHandler(main.getTable().getTable(), main.getShelter()));
        MenuItem settingsItem = new MenuItem("Settings");
        MenuItem exitItem = new MenuItem("Exit");
        exitItem.setAccelerator(KeyCombination.keyCombination("Alt+f4"));
        exitItem.setOnAction(e -> System.exit(0));
        fileMenu.getItems().addAll(newItem, saveItem, loadItem, new SeparatorMenuItem(),
        		settingsItem, new SeparatorMenuItem(),
        		exitItem);
        
        Menu editMenu = new Menu("Edit");
        MenuItem undoItem = new MenuItem("Undo");
        undoItem.setAccelerator(KeyCombination.keyCombination("Ctrl+Z"));
        MenuItem redoItem = new MenuItem("Redo");
        redoItem.setAccelerator(KeyCombination.keyCombination("Ctrl+Y"));
        MenuItem copyItem = new MenuItem("Copy");
        copyItem.setAccelerator(KeyCombination.keyCombination("Ctrl+C"));
        MenuItem cutItem = new MenuItem("Cut");
        cutItem.setAccelerator(KeyCombination.keyCombination("Ctrl+X"));
        MenuItem pasteItem = new MenuItem("Paste");
        pasteItem.setAccelerator(KeyCombination.keyCombination("Ctrl+V"));
        editMenu.getItems().addAll(undoItem, redoItem, new SeparatorMenuItem(),
        		copyItem, cutItem, pasteItem);
        
        Menu helpMenu = new Menu("Help");
        helpMenu.getItems().add(new MenuItem("There is no help here"));
        
        box = new MenuBar();
        box.getMenus().addAll(fileMenu, editMenu, helpMenu);
	}
	
	public MenuBar getBox(){
		return box;
	}

}
