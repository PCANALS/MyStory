rm(list = ls())

pacman::p_load(magick, networkD3)

# Do you




#Live

bcn <- image_read("https://pcanals.github.io/pics/barcelona.jpg" )%>%image_scale("x300")
trip<-image_read("https://pcanals.github.io/pics/travel01.jpg" )%>%image_scale("x300")
nieve <- image_read("https://pcanals.github.io/pics/alpes.jpg" )%>%image_scale("x300") 
snow <- image_read("https://pcanals.github.io/pics/snow.jpg" )%>%image_scale("x300") 
lea <- image_read("https://pcanals.github.io/pics/lea.jpg" )%>%image_scale("x300") 
playa <- image_read("https://pcanals.github.io/pics/playa.jpg" )%>%image_scale("x300")

life<-image_animate(c(bcn, trip, snow, playa, nieve, lea), 
                    fps = 1, dispose = "previous")

#Work

cv2 <- image_read_pdf("PilarCanals.pdf")%>%image_scale("x1000")

#projects

git<-image_annotate(image_read("https://pcanals.github.io/pics/GIT.png" )%>%image_scale("x400"), 
                    "   go to github.com/PCANALS  ", size = 30, color = "white", boxcolor = "green2",
                    degrees = 10, location = "+50+280")

##Decisions

## Are u sure
really<-image_read("https://pcanals.github.io/pics/really.gif")
what<-image_read("https://pcanals.github.io/pics/what.gif")
yeah<-image_read("https://pcanals.github.io/pics/yeah.gif")

#first questions

a<-menu(c("Yes", "No", "Maybe"), title="Do u wanna know my story?", graphics = TRUE)

if (a == 1){
  b<-menu(c("Life", "Work", "Projects"), title="What do u want know?", graphics = TRUE)
  if (b==1){ print(life);print("Hi, I'm Pilar and I live in Barcelona, I love travelling, the snow and Lea, my puppy")}
      else if (b==2) {print(cv2); "Check my cv on  www.linkedin.com/in/pilarcanals"}
      else if (b==3) {print(git); "See my projects on Github https://github.com/PCANALS"}
} else {
  print (what);
   c<-menu(c("no", "yes"), title="Are u sure?", graphics = TRUE )
      if (c==1) {print("Yeii!, then let's back to the beginning")}
  }


#Projects



# print(really)
image_browse(what)
# 
# 
# 
# data(MisLinks, MisNodes)
# forceNetwork(Links = MisLinks, Nodes = MisNodes, Source = "source",
#              Target = "target", Value = "value", NodeID = "name",
#              Group = "group", opacity = 0.8)



