//
//  Escaping.swift
//  Closures
//
//  Created by spychatter mx on 12/12/17.
//  Copyright © 2017 spychatter. All rights reserved.
//

//*****Escaping closures, son aquellas cuya ejecución puede ocurrir mucho después del momento de pasarlas. Incluso después de que la función llamadora acabe.

// En Swift3 todas las closures son non-scaping por defecto. esto quiere decir que si quieres que algo se haga de manera asincrona, tenemos que indicarselo con @escaping


import UIKit

class Escaping: UIViewController{
	
	
	var obj = " Mundo"
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}
	
	func myMethod(){
		
		otroMethod(a: 1, b: 1) {[weak self] in
			self?.obj = "Hola"
		}
		
		return
	}
	
	func otroMethod(a: Int, b: Int, f: @escaping ()->() ){
		
			f()
		
		
	}
	
}
