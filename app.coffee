
# The following Code was written by Hammaad Mahboob and was released under the GNU-GPL3.0 License.
# The Design and idea behind this code as described in this post "https://uxplanet.org/building-the-universal-menu-of-tomorrow-4c2f06635197"
# has been released under the CC-BY SA 4.0 License. 

# Please read the License.txt for more information.



# Set Device background
Screen.backgroundColor = null
Canvas.image = "images/background.png"

# Define and set custom device
Framer.Device.customize
	deviceType: Framer.Device.Type.Phone
	devicePixelRatio: 2
	screenWidth: 832
	screenHeight: 1712
	deviceImage: "images/Samsung Mockup.png"
	deviceImageWidth: 889
	deviceImageHeight: 1945





Ordr = new PageComponent
	width: Screen.width
	height: Screen.height
	scrollHorizontal: false 
	scrollVertical: false
	backgroundColor: "white"

samsung.width = 444.5
samsung.height = 971.5
samsung.midY = 428
samsung.midX = 208
samsung.parent = Ordr
round_overlay.placeBehind(Ordr)
round_overlay.height = Screen.height
round_overlay.width = Screen.width
round_overlay.midX = 208
round_overlay.midY = 428
round_overlay.parent = Ordr
Home_Feed.parent = round_overlay

Pull_Down.placeBefore(Social_Block_Main)
RV_back.opacity = 0
RV_back.y = 1200
Restaurant_filter_hover.opacity = 0
Restaurant_filter_hover.y = 120
RV_back.placeBehind(background_main)
Restaurant_filter_hover.placeBehind(RV_back)
Welcome_search_Content.placeBehind(Rectangle)
Welcome_search_Content.opacity = 0
Welcome_search_Content. y = 122
search1.parent = Home_Feed
search2.parent = Home_Feed
search3.parent = Home_Feed
search1.placeBehind(Restaurant_filter_hover)
search2.placeBehind(search1)
search3.placeBehind(search2)
search1.opacity = 0
search2.opacity = 0
search3.opacity = 0






scroll = ScrollComponent.wrap Home_Feed
scroll .scrollHorizontal = false
scroll. speedY = 0.4
scroll. contentInset = 
	top: - 100 

image1.y = -30
image3.y = -5
Welcome_Text.x = 22
Welcome_Text.y = 360
Rectangle.y = 590
Oval.y = 570
image1_overlay.y = -40
Meal_title_1.y= 78
Meal_Restaurant_1.y = 144
Menu_Icon.y= 150
image2.y = -10
image2_overlay.y = -20
Rectangle_2.y = 830
welcome_text_touch_area.y = 476

scroll.on Events.Move, ->
	if Home_Feed.y < -1200
		Home_Feed.animate
			y: - 1100
			options: 
				time: .75

Menu_Icon.states =
	hide:
		opacity:0
		y:-50
	show:
		opacity: 1
		y:150

scroll.on Events.Move, ->
    y = Utils.modulate(scroll.scrollY, [0,100], [78,50])
    RV_back.y = y

scroll.on Events.Move, ->
    y = Utils.modulate(scroll.scrollY, [0,100], [120,220])
    Restaurant_filter_hover.y = y


scroll.on Events.Move, ->
    y = Utils.modulate(scroll.scrollY, [0,100], [590,490])
    Rectangle.y = y
    
scroll.on Events.Move, ->
    y = Utils.modulate(scroll.scrollY, [0,100], [0,0])
    Rectangle_1_Hover.y = y
    

    
    scroll.on Events.Move, ->
    y = Utils.modulate(scroll.scrollY, [0,100], [503,403])
    Gradient_Left.y = y
    scroll.on Events.Move, ->
    y = Utils.modulate(scroll.scrollY, [0,100], [503,403])
    Gradient_Right.y = y
   

    
    
    scroll.on Events.Move, ->
    y = Utils.modulate(scroll.scrollY, [0,100], [-30,-52])
    image1.y = y
    
    scroll.on Events.Move, ->
    y = Utils.modulate(scroll.scrollY, [0,100], [-40,-82])
    image1_overlay.y = y
    
    scroll.on Events.Move, ->
    y = Utils.modulate(scroll.scrollY, [0,100], [200,154])
    meals.y = y
    
    
    scroll.on Events.Move, ->
    y = Utils.modulate(scroll.scrollY, [0,100], [570,470])
    Oval.y = y
    
    scroll.on Events.Move, ->
    y = Utils.modulate(scroll.scrollY, [30,100], [69,49])
    Meal_title_1.y = y
    
    
    
    scroll.on Events.Move, ->
    y = Utils.modulate(scroll.scrollY, [30,100], [134,112])
    Meal_Restaurant_1.y = y





    scroll.on Events.Move, ->
    y = Utils.modulate(scroll.scrollY, [0,100], [0,0])
    Rectangle_1_Clicked_Content.y = y
    scroll.on Events.Move, ->
    y = Utils.modulate(scroll.scrollY, [0,100], [-40,-82])
    image1_Clicked_overlay.y = y
    

scroll.on Events.Move, ->
    y = Utils.modulate(scroll.scrollY, [0,100], [830,730])
    Rectangle_2.y = y
scroll.on Events.Move, ->
    y = Utils.modulate(scroll.scrollY, [0,100], [-10,-27])
    image2.y = y
    scroll.on Events.Move, ->
    y = Utils.modulate(scroll.scrollY, [0,100], [-20,-62])
    image2_overlay.y = y

    
scroll.on Events.Move, ->
    y = Utils.modulate(scroll.scrollY, [0,100], [1070,970])
    Rectangle_3.y = y
scroll.on Events.Move, ->
    y = Utils.modulate(scroll.scrollY, [0,100], [-5,-24])
    image3.y = y
    scroll.on Events.Move, ->
    y = Utils.modulate(scroll.scrollY, [50,150], [-10,-52])
    image3_overlay.y = y

scroll.on Events.Move, ->
    y = Utils.modulate(scroll.scrollY, [0,100], [1310,1210])
    Rectangle_4.y = y
scroll.on Events.Move, ->
    y = Utils.modulate(scroll.scrollY, [0,50], [-40,-49])
    image4.y = y
    scroll.on Events.Move, ->
    y = Utils.modulate(scroll.scrollY, [100,200], [-20,-62])
    image4_overlay.y = y

scroll.on Events.Move, ->
    y = Utils.modulate(scroll.scrollY, [0,100], [1550,1450])
    Rectangle_5.y = y
scroll.on Events.Move, ->
    y = Utils.modulate(scroll.scrollY, [0,50], [60,47]) 
    image5.y = y
    scroll.on Events.Move, ->
    y = Utils.modulate(scroll.scrollY, [50,150], [-25,-37])
    image5_overlay.y = y
 

scroll.on Events.Move, ->
    y = Utils.modulate(scroll.scrollY, [0,100], [360,290])
    Welcome_Text.y = y
    
scroll.on Events.Move, ->
    y = Utils.modulate(scroll.scrollY, [0,100], [476,406])
    welcome_text_touch_area.y = y
    
    scroll.on Events.Move, ->
    y = Utils.modulate(scroll.scrollY, [0,100], [1860, 1765])
    Welcome_Text2.y = y


    
scroll.on Events.Move, ->
    y = Utils.modulate(scroll.scrollY, [100,400], [1830,1597])
    Social_Block_Main.y = y
    
scroll.on Events.Move, ->
    y = Utils.modulate(scroll.scrollY, [0,100], [80,65])
    social_pic_1.y = y

scroll.on Events.Move, ->
    y = Utils.modulate(scroll.scrollY, [0,100], [70,55])
    Social_pic_2.y = y
    
scroll.on Events.Move, ->
    y = Utils.modulate(scroll.scrollY, [0,100], [100,85])
    Social_pic_3.y = y
    
scroll.on Events.Move, ->
    y = Utils.modulate(scroll.scrollY, [0,100], [100,85])
    Social_pic_4.y = y
    
scroll.on Events.Move, ->
    y = Utils.modulate(scroll.scrollY, [0,100], [40,30])
    Social_pic_5.y = y
    
scroll.on Events.Move, ->
    y = Utils.modulate(scroll.scrollY, [0,100], [60,50])
    Social_pic_6.y = y

Social_1.opacity = 0
Social_2.opacity = 0
Social_3.opacity = 0
Social_4.opacity = 0
Social_5.opacity = 0
Social_6.opacity = 0



Social_1.states =
	appear:
		opacity:1
		y: 20

	dissapear:
		opacity: 0
		y: 50



Social_2.states =
	appear:
		opacity:1
		y: 115
	dissapear:
		opacity: 0
		y: 145

Social_3.states =
	appear:
		opacity:1
		y: 253
	dissapear:
		opacity: 0
		y: 283

Social_4.states =
	appear:
		opacity:1
		y: 348
	dissapear:
		opacity: 0
		y: 378
		
Social_5.states =
	appear:
		opacity:1
		y: 486
	dissapear:
		opacity: 0
		y: 516
		
Social_6.states =
	appear:
		opacity:1
		y: 581
	dissapear:
		opacity: 0
		y: 611

Rectangle_1_Clicked_Content .animationOptions =
	curve:"Bezier"
	
Rectangle_1_Content .animationOptions =
	curve:"Bezier"
	
Oval .animationOptions =
	curve:"Bezier"

Rectangle .animationOptions =
	curve:"Bezier"
	
image1_overlay .animationOptions = 
	curve:"Bezier"

Rectangle_1_Hover .animationOptions = 
	curve:"Bezier"

Gradient_Left .animationOptions =
	curve: "spring(200, 60, 0)"
Gradient_Right .animationOptions =
	curve: "spring(200, 60, 0)"

Rectangle_1_Clicked_Content. opacity = 0

Rectangle_1_Hover .onTap ->
	Rectangle_1_Content.stateCycle("clicked", "default")

Rectangle_1_Content .onStateSwitchStart ->
	Rectangle. stateCycle("clicked", "default")

Rectangle_1_Content .onStateSwitchStart ->
	Rectangle_1_Hover.stateCycle("clicked", "default")

Rectangle_1_Content .onStateSwitchStart ->
	Rectangle_1_Clicked_Content .stateCycle("clicked", "default")



Rectangle_1_Content. onStateSwitchStart ->
	Oval. stateCycle("clicked", "default")

Rectangle. onSwipeStart ->
	Oval.stateCycle("dragging")

Rectangle. onSwipeEnd ->
	Oval.stateCycle("default")



Rectangle_1_Hover.opacity = 0

Rectangle_1_Hover.states =
	clicked:
		opacity:1
		scale:1.02

	default:
		opacity:1

Rectangle_1_Content .states =
	clicked:
		opacity: 0
		
	default: 
		opacity: 1
		
		
Rectangle.states =
	clicked: 
		scale:1.02
		shadowSpread: 4
	default:
		opacity:1
		scale:1
		shadowSpread: 0
	down:
		opacity: 0
		y: 840
	up:
		opacity: 1
		y: 590
	ps:
		opacity: 0
		y: 1400


Rectangle_2.states=
	down:
		opacity:0
		y: 1000
	up:
		opacity: 1
		y:830
	ps:
		opacity: 0
		y: 1600

Oval.states = 
	clicked:
		scale: 1.05
		
	default:
		opacity:1
		scale: 1
	dragging:
		opacity:0
		scale:0.6
	ps:
		opacity: 0
		y: 1400



image1_overlay.states =
	clicked:
		opacity: 0
	default:
		opacity: 1

Rectangle_1_Clicked_Content.states =
	clicked:
		opacity: 1
		scale:1
	default:
		opacity: 0
		scale:1

Rectangle.draggable.enabled = true
Rectangle .scrollVertical = false
Rectangle. speedX = 0

Rectangle.onDragEnd (event, layer) ->
	Rectangle .animate 
		properties: 
			midX: Rectangle_2.midX
			time: 0.3

Gradient_Left . blur = 25
Gradient_Left.x = -480
Gradient_Right . blur = 25
Gradient_Right.x = 510

Gradient_Left.states=
	hover:
		x:-220
	default:
		x:-480
		
Gradient_Right.states=
	hover:
		x: 280
	default:
		x: 510
		
Rectangle .onSwipeLeftStart (event, layer) ->
	Gradient_Left.stateCycle("hover") 
			
Rectangle .onSwipeLeftEnd (event, layer) ->
	Gradient_Left.stateCycle("default") 

Rectangle .onSwipeRightStart (event, layer) ->
	Gradient_Right.stateCycle ("hover")
	
Rectangle .onSwipeRightEnd (event, layer) ->
	Gradient_Right. stateCycle ("default")





Welcome_Text.animationOptions =
	curve: "Bezier"
	delay:0.2
	
Pull_Down .opacity = 0


pull_down_1 .blur = 50
pull_down_2 .blur = 50
pull_down_3 .blur = 50
pull_down_4 .blur = 50

Pull_Down.scrollHorizontal = false
Pull_Down.scrollVertical = false


search1.y = 170
search1.midX = 201
search2.y = 194
search2.midX = 208
search3.y = 225
search3.midX = 209

Home_Feed .onSwipeDown (event, layer) ->
	if Home_Feed.y > - 100
		Pull_Down.opacity =
			Utils.modulate Home_Feed.y, [-96,-60], [0,1], true


Home_Feed .onSwipeDownEnd (event, layer) ->
	Pull_Down.animate
		opacity: 0
		curve: "Bezier"


Home_Feed .onDragEnd (event, layer) ->
	if Home_Feed.y > - 100
		Home_Feed .animate
			properties:
				y: -103
				curve: "Bezier"

Home_Feed.onDragEnd (event, layer) ->
	if Home_Feed.y > -30

		Welcome_Text.stateCycle("ps")

Home_Feed.onDragEnd (event, layer) ->
	if Home_Feed.y > -30

		Rectangle.stateCycle("ps")

Home_Feed.onDragEnd (event, layer) ->
	if Home_Feed.y > -30

		Oval.stateCycle("ps")

Home_Feed.onDragEnd (event, layer) ->
	if Home_Feed.y > -30

		Rectangle_2.stateCycle("ps")

Home_Feed.onDragEnd (event, layer) ->
	if Home_Feed.y > -30
		Menu_Icon.animate
			y: - 60
			opacity: 0

search1.states = 
	active: 
		opacity: 1
	default:
		opacity:0



Pull_Down.onAnimationEnd (event, layer) ->
	if Welcome_Text.y > 700
		background_main.placeBefore(Pull_Down)

Pull_Down.onAnimationEnd (event, layer) ->
	if Welcome_Text.y > 700
		search1.placeBefore(welcome_text_touch_area)

Pull_Down.onAnimationEnd (event, layer) ->
	if Welcome_Text.y > 700
		search1.animate
			opacity: 1
			options: 
				delay: 0.5
				time: 1.5
				curve: "Bezier"

Pull_Down.onAnimationEnd (event, layer) ->
	if Welcome_Text.y > 700
		search3.opacity = 0

Pull_Down.onAnimationEnd (event, layer) ->
	if Welcome_Text.y > 700
		search2.opacity = 0

Pull_Down.onAnimationEnd (event, layer) ->
	if Welcome_Text.y > 700
		search2.placeBehind(search1)

Pull_Down.onAnimationEnd (event, layer) ->
	if Welcome_Text.y > 700
		search3.placeBehind(search2)

Pull_Down.onAnimationEnd (event, layer) ->
	if Welcome_Text.y > 700
		scroll.scrollVertical = false

search3. onTapEnd (event, layer) ->
	scroll.scrollVertical = true


search1.onTap (event, layer) ->
	search1.animate
		opacity: 0
		options: 
			time: 1.5
			curve: "Bezier"


search2.onAnimationEnd (event, layer) ->
	search1.placeBehind(background_main)

search1.onTap (event, layer) ->
	search2.animate
		opacity: 1
		options: 
			delay: 0.5
			time: 1.5
			curve: "Bezier"

search2.onTap (event, layer) ->
	search2.animate
		opacity: 0
		options: 
			time: 1.5
			curve: "Bezier"

search3.onAnimationEnd (event, layer) ->
	search2.placeBehind(search1)

search2.onTapEnd (event, layer) ->
	Welcome_Text.y = 1000
search2.onTapEnd (event, layer) ->
	Rectangle.y = 1400
search2.onTapEnd (event, layer) ->
	Oval.y = 1400
search2.onTapEnd (event, layer) ->
	Rectangle_2.y = 1700

search2.onTap (event, layer) ->
	search3.animate
		opacity: 1
		options: 
			delay: 0.5
			time: 1.5
			curve: "Bezier"

search3.onTap (event, layer) ->
	search3.animate
		opacity: 0
		options: 
			time: 1.5
			curve: "Bezier"

search3.onTap (event, layer) ->
	Home_Feed.animate
		y: -103
		options: 
			delay: 0.5
			time: 1.5
			curve: "Bezier"



search3.onTap (event, layer) ->
	Menu_Icon.animate
		y: 150
		opacity: 1

search3.onTapEnd (event, layer) ->
	background_main.placeBehind(Gradient_Right)

search3.onTapEnd (event, layer) ->
	Menu_Icon.placeBefore(background_main)

search3.onTapEnd (event, layer) ->
	search1.placeBehind(background_main)

search3.onTapEnd (event, layer) ->
	search2.placeBehind(search1)

search3.onTapEnd (event, layer) ->
	search3.placeBehind(search2)

search3.onTapEnd (event, layer) ->
	search1.opacity = 0
search3.onTapEnd (event, layer) ->
	search2.opacity = 0


search3.onTapEnd (event, layer) ->
	Welcome_Text.animate
		y: 360
		opacity: 1
		options:
			time: 1.5
			curve: "Bezier"
			delay: .6

search3.onTapEnd (event, layer) ->
	Rectangle.animate
		y: 590
		opacity: 1
		options:
			time: 1.5
			curve: "Bezier"
			delay: .6

search3.onTapEnd (event, layer) ->
	Oval.animate
		y: 570
		opacity: 1
		options:
			time: 1.5
			curve: "Bezier"
			delay: .6

search3.onTapEnd (event, layer) ->
	Rectangle_2.animate
		y: 830
		opacity: 1
		options:
			time: 1.5
			curve: "Bezier"
			delay: .6

Home_Feed.onDragStart ->
	if Home_Feed.y < - 770
		Social_1 .stateCycle("appear")

Home_Feed.onDragStart (event, layer) ->
	if Home_Feed.y > - 710
		Social_1 .stateCycle("dissapear")


Social_2.animationOptions =
	delay: 0.3

Social_1.onAnimationStart (event, layer) ->
	if Home_Feed.y < - 770
		Social_2 .stateCycle("appear")

Social_1.onAnimationStart (event, layer) ->
	if Home_Feed.y > - 710
		Social_2 .stateCycle("dissapear")

Social_3.animationOptions =
	delay: 0.6

Social_1.onAnimationStart (event, layer) ->
	if Home_Feed.y < - 770
		Social_3 .stateCycle("appear")

Social_1.onAnimationStart (event, layer) ->
	if Home_Feed.y > - 710
		Social_3 .stateSwitch("dissapear")

Social_4.animationOptions =
	delay: 0.9

Social_1.onAnimationStart (event, layer) ->
	if Home_Feed.y < - 770
		Social_4 .stateCycle("appear")

Social_1.onAnimationStart (event, layer) ->
	if Home_Feed.y > - 710
		Social_4 .stateSwitch("dissapear")

Social_5.animationOptions =
	delay: 1.2

Social_1.onAnimationStart (event, layer) ->
	if Home_Feed.y < - 770
		Social_5 .stateCycle("appear")

Social_1.onAnimationStart (event, layer) ->
	if Home_Feed.y > - 710
		Social_5 .stateSwitch("dissapear")

Social_6.animationOptions =
	delay: 1.5

Social_1.onAnimationStart (event, layer) ->
	if Home_Feed.y < - 770
		Social_6 .stateCycle("appear")

Social_1.onAnimationStart (event, layer) ->
	if Home_Feed.y > - 710
		Social_6 .stateSwitch("dissapear")



Welcome_Text.states=
	up:
		y: -50
		opacity: 0
	down:
		y: 360
		x: 22
		opacity: 1
	ps:
		y: 1200
		opacity: 0

Welcome_Text.animationOptions =
	delay: 0.3
	curve: "Bezier"
	time: 1.8

Menu_Icon.animationOptions =
	delay: 0.5
	curve: "Bezier"
	time: 1.5

Welcome_search_Content.states =
	hidden:
		opacity:0
		scale:0.9
	show:
		opacity:1
		scale:1

Welcome_search_Content.animationOptions =
	delay: 1
	time: 2
	curve: "Bezier"
	
Welcome_Search.animationOptions =
	delay: 1.4
	time: 2
	curve: "Bezier"
	
Container_view.animationOptions =
	delay: 1.9
	time: 1.6
	curve: "Bezier"

Welcome_search_bar.animationOptions =
	delay: 2
	time: 1.8
	curve: "Bezier"
	
ws2.animationOptions =
	delay: 2.4
	time: 2
	curve: "Bezier"

search_icon.animationOptions =
	delay: 2.4
	time: 2
	curve: "Bezier"

Welcome_Search.opacity = 0
Welcome_Search.y = 120
Container_view.opacity = 0
Container_view.y = 200
Welcome_search_bar.opacity = 0
Welcome_search_bar.y = 1200


ws2.opacity = 0
search_icon.opacity = 0

Welcome_Search.states =
	up: 
		y: 40
		opacity: 1
	down:
		y:120
		opacity: 0

Container_view.states =
	up:
		y: 120
		opacity: 1

	down:
		y:200
		opacity: 0



Welcome_search_bar.states =
	up: 
		y: 750
		opacity: 1
	down:
		y:1200
		opacity: 0


ws2.states = 
	show:
		opacity: 1
		y: 700
	hide:
		opacity: 0
		y: 1200


search_icon.states = 
	show:
		opacity: 1
		y: 700
	hide:
		opacity: 0
		y: 1200


welcome_text_touch_area.onTap (event, layer) ->
	Welcome_Text.stateCycle ("up")
	
welcome_text_touch_area.onTap (event, layer) ->
	Menu_Icon.stateCycle("hide")

welcome_text_touch_area.onTap (event, layer) ->
	Rectangle.stateCycle("down")

welcome_text_touch_area.onTap (event, layer) ->
	Rectangle_2.stateCycle("down")
	
welcome_text_touch_area.onTap (event, layer) ->
	Oval.stateCycle("dragging")
	
welcome_text_touch_area.onTap (event, layer) ->
	Welcome_search_Content.stateCycle("show")

welcome_text_touch_area.onTap (event, layer) ->
	Welcome_Search.stateCycle ("up")

welcome_text_touch_area.onTap (event, layer) ->
	Container_view.stateCycle ("up")
	
welcome_text_touch_area.onTap (event, layer) ->
	Welcome_search_bar.stateCycle ("up")

welcome_text_touch_area.onTap (event, layer) ->
	ws2.stateCycle("show")

welcome_text_touch_area.onTap (event, layer) ->
	search_icon.stateCycle("show")



WS_back.onClick (event, layer) ->
	if Restaurant_filter_hover.x > 420
		Welcome_Search.stateCycle ("down")
	
WS_back.onClick (event, layer) ->
	if Restaurant_filter_hover.x > 420
		Container_view.stateCycle ("down")

WS_back.onClick (event, layer) ->
	if Restaurant_filter_hover.x > 420
		Welcome_search_bar.stateCycle ("down")

WS_back.onClick (event, layer) ->
	if Restaurant_filter_hover.x > 420
		ws2.stateCycle ("hide")
WS_back.onClick (event, layer) ->
	if Restaurant_filter_hover.x > 420
		search_icon.stateCycle ("hide")
WS_back.onClick (event, layer) ->
	if Restaurant_filter_hover.x > 420
		Menu_Icon.stateCycle ("show")




Menu_Icon.onAnimationEnd (event, layer) ->
	if Menu_Icon.y > 140
		Welcome_Text.stateCycle ("down")

Menu_Icon.onAnimationEnd (event, layer) ->
	if Menu_Icon.y > 140
		Rectangle.stateCycle ("up")
	
Menu_Icon.onAnimationEnd (event, layer) ->
	if Menu_Icon.y > 140
		Rectangle_2.stateCycle ("default")
	
Menu_Icon.onAnimationEnd (event, layer) ->
	if Menu_Icon.y > 140
		Oval.stateCycle("default")
		






WSR1.y = 210
WSR2.y = 219
WRS2_images.opacity = 0
WRS2_images .y = 25
WSR3.x = 550





WSR1.states = 
	default:
		x: 17
		y: 219
		scale:1
	left1: 
		x: -82
		y: 219
		scale: 0.946
	right1:
		x: 220
		scale: 0.946

WSR2.states = 
	default:
		x: 220
		scale: 1
	left1: 
		x: 19
		scale: 1.056
	left2: 
		x: -82
		scale: 1
		


Container_view.onSwipeLeftStart (event, layer) ->
	if WSR1.x = 17
		WSR1.animate
			properties:
				x: -282
				scale: 0.946

Container_view.onSwipeLeftStart (event, layer) ->
	if WSR1.x = 17
		WSR1_text.animate
			properties:
				scale: 1.3
				opacity: 0

Container_view.onSwipeLeftStart (event, layer) ->
	if WSR1.x = 17
		WRS1_images.animate
			properties:
				scale: 0.7
				opacity: 0

Container_view.onSwipeLeftStart (event, layer) ->
	if WSR1.x = 17
		WSR2.animate
			properties:
				x: 17
				y: 210
				width: 186
				height: 225
				shadowBlur: 30
				shadowSpread: 5
				
				
Container_view.onSwipeLeftStart (event, layer) ->
	if WSR1.x = 17
		WSR2_text.animate
			properties:
				scale: 0.7
				y: 140
				x: - 3

Container_view.onSwipeLeftStart (event, layer) ->
	if WSR1.x = 17
		WRS2_images.animate
			properties:
				opacity: 1
				scale: 1
				x: 6
				y: 25


Container_view.onSwipeLeftStart (event, layer) ->
	if WSR1.x = 17
		WSR3.animate
			properties:
				x: 220
				y: 219
				scale: 1

Container_view.onSwipeRightStart (event, layer) ->
	if WSR1.x = -282
		WSR1.animate
			properties:
				x: 17
				y:210
				scale:1

Container_view.onSwipeRightStart (event, layer) ->
	if WSR1.x = -282
		WSR1_text.animate
			properties:
				x: 20
				scale: 1
				opacity: 1

Container_view.onSwipeRightStart (event, layer) ->
	if WSR1.x = -282
		WRS1_images.animate
			properties:
				scale: 1
				opacity: 1


Container_view.onSwipeRightStart (event, layer) ->
	if WSR1.x = -282
		WSR2.animate
			properties:
				x: 220
				y: 219
				width: 176
				height: 201
				shadowBlur: 10
				shadowSpread: 1
				


Container_view.onSwipeRightStart (event, layer) ->
	if WSR1.x = -282
		WSR2_text.animate
			properties:
				scale: 1
				y: 103
				x: 15

Container_view.onSwipeRightStart (event, layer) ->
	if WSR1.x = -282
		WRS2_images .animate
			properties:
				opacity: 0
				scale: 0.8
				y: 25

welcome_text_touch_area.onTapEnd (event, layer) ->
	scroll.scrollVertical = false

WS_back . onTouchEnd (event, layer) ->
	scroll.scrollVertical = true

WS_back.placeBefore(Container_view)

Container_view.onSwipeRightStart (event, layer) ->
	if WSR1.x = -282
		WSR3.animate
			properties:
				x: 550
				y: 219
				scale:1
				
welcome_text_touch_area.onTapEnd (event, layer) ->
	Rectangle.placeBehind (Welcome_search_Content)

WS_back .onTapEnd (event, layer) ->
	Welcome_search_Content.placeBehind (Rectangle)

Menu_Icon.onTap (event, layer) ->
	Rectangle.animate
		y: 1000
		opacity: 0

Menu_Icon.onTap (event, layer) ->
	Rectangle_2.animate
		y: 1200
		opacity: 0

Menu_Icon.onTap (event, layer) ->
	Rectangle_3.opacity = 0
Menu_Icon.onTap (event, layer) ->
	Rectangle_4.opacity = 0
Menu_Icon.onTap (event, layer) ->
	Rectangle_5.opacity = 0
Menu_Icon.onTap (event, layer) ->
	Welcome_Text.animate
		x: -500
		opacity: 0
		curve: "Bezier"


Restaurant_filter_hover. x = 600

Menu_Icon.onTap (event, layer) ->
	Oval.animate
		opacity: 0
		scale: 0.6

Menu_Icon.onTap (event, layer) ->
	Oval.placeBehind(background_main)
Restaurant_filter_hover.animationOptions = 
	delay: 0.7
	curve: "Bezier"
	time: 1.3
		
RV_back.animationOptions = 
	delay: 0.2
	time: 1.6
Menu_Icon.onTapEnd (event, layer) ->
	RV_back.placeBefore(Social_Block_Main)

Menu_Icon.onTapEnd (event, layer) ->
	Restaurant_filter_hover.placeBefore(RV_back)
Menu_Icon.onTapEnd (event, layer) ->
	Menu_Icon.placeBehind(background_main)


Menu_Icon.onTapEnd (event, layer) ->
	RV_back.animate
		y: 92
		opacity: 1
		options: 
			delay: 0.5
			time: 2
		curve:"Bezier"

Menu_Icon.onTapEnd (event, layer) ->
	Menu_Icon.animate
		y: -20
		opacity: 0
		options: 
			delay: 0.5
			time: 1.5
		curve:"Bezier"

Menu_Icon.onTapEnd (event, layer) ->
	Restaurant_filter_hover.animate
		x: 7
		y: 120
		opacity: 1
		curve: "Bezier"

Menu_Icon.onTap (event, layer) ->
	Oval.placeBefore(Rectangle)

RV_back_arrow.onTap (event, layer) ->
	RV_back.animate
		y: 1000
		opacity: 0

RV_back_arrow.onTap (event, layer) ->
	Restaurant_filter_hover.animate
		x: 500
		opacity: 0

RV_back_arrow.onTap (event, layer) ->
	Rectangle_3.opacity = 1

	
RV_back_arrow.onTap (event, layer) ->
	Rectangle_4.opacity = 1
	
RV_back_arrow.onTap (event, layer) ->
	Rectangle_5.opacity = 1

RV_back_arrow.onTap (event, layer) ->
	Menu_Icon.placeBefore(background_main)

RV_back_arrow.onTapEnd (event, layer) ->
	Rectangle.stateCycle("up")
RV_back_arrow.onTapEnd (event, layer) ->
	Rectangle_2.stateCycle("default")
RV_back_arrow.onTapEnd (event, layer) ->
	Oval.stateCycle("default")

RV_back_arrow.onTapEnd (event, layer) ->
	Welcome_Text.animate
		x: 22
		opacity: 1
		

RV_back_arrow.onTapEnd (event, layer) ->
	Home_Feed.animate
		y: -100

RV_back_arrow.onTapEnd (event, layer) ->
	Menu_Icon.animate
		y: 150
		opacity: 1
		options: 
			delay: 0.5
			time: 1.5
			curve:"Bezier"

RV_back_play.onTap (event, layer) ->
	scroll.scrollVertical = false

RV_back_play.onTap (event, layer) ->
	Welcome_search_Content.placeBefore (Restaurant_filter_hover)

RV_back_play.onTap (event, layer) ->
	RV_back.animate
		opacity: 0

RV_back_play.onTap (event, layer) ->
	Restaurant_filter_hover.animate
		opacity: 0

RV_back_play.onTap (event, layer) ->
	Home_Feed.animate
		y: -100

RV_back_play.onTap (event, layer) ->
	Welcome_search_Content.stateCycle("show")

RV_back_play.onTap (event, layer) ->
	Welcome_Search.stateCycle ("up")

RV_back_play.onTap (event, layer) ->
	Container_view.stateCycle ("up")
	
RV_back_play.onTap (event, layer) ->
	Welcome_search_bar.stateCycle ("up")

RV_back_play.onTap (event, layer) ->
	ws2.stateCycle("show")

RV_back_play.onTap (event, layer) ->
	search_icon.stateCycle("show")


WS_back.onTap (event, layer) ->
	Welcome_Search.animate
		y: 120
		opacity: 0

WS_back.onTap (event, layer) ->
	Container_view.animate
		y: 200
		opacity: 0
		

WS_back.onTap (event, layer) ->
	Welcome_search_bar.animate
		y: 900
		opacity: 0

WS_back.onTap (event, layer) ->
	ws2.animate
		opacity: 0

WS_back.onTap (event, layer) ->
	search_icon.animate
		opacity: 0

WS_back.onTapEnd (event, layer) ->
	scroll.scrollVertical = true


WS_back.onTapEnd (event, layer) ->
	if Restaurant_filter_hover .x < 20
		RV_back.animate
			opacity: 1
			options:
				time: 1.5
				curve: Bezier.ease
				delay: 2.08


WS_back.onTapEnd (event, layer) ->
	if Restaurant_filter_hover .x < 20
		Restaurant_filter_hover.animate
			opacity: 1
			options:
				time: 1.5
				curve: Bezier.ease
				delay: 2.08

WS_back.onTap (event, layer) ->
	if Restaurant_filter_hover.x > 50
		RV_back.placeBehind(background_main)


RV_back_arrow.onAnimationEnd (event, layer) ->
	Restaurant_filter_hover.placeBehind(Menu_Icon)
RV_back_arrow.onAnimationEnd (event, layer) ->
	RV_back.placeBehind(background_main)
RV_back_arrow.onTapEnd (event, layer) ->
	Menu_Icon.placeBefore(RV_back)

