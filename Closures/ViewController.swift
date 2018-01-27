//
//  ViewController.swift
//  Closures
//
//  Created by spychatter mx on 12/12/17.
//  Copyright © 2017 spychatter. All rights reserved.
//

//Retain Cycle. Cada vez que nosotros capturasmos una variable del ambito de nuestra clase en una closure se crea una referencia fuerte, por lo tanto tenemos que crear una referencia debil a self, y esto lo vamos a lograr con la notación [weak self] in,

import UIKit

class ViewController: UIViewController {

	var obj = " Mundo"
	
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	func myMethod(){
		otroMethod(a: 1, b: 1) { in
			
		}
		return
	}

	func otroMethod(a: Int, b: Int, f: ()->()){
		f()
	}
}

