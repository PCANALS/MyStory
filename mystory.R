rm(list = ls())

pacman::p_load(magick, networkD3, pdftools)


#Live

bcn <- image_read("https://pcanals.github.io/pics/barcelona.jpg" )%>%image_scale("x200")
trip<-image_read("https://pcanals.github.io/pics/travel01.jpg" )%>%image_scale("x200")
nieve <- image_read("https://pcanals.github.io/pics/alpes.jpg" )%>%image_scale("x200") 
snow <- image_read("https://pcanals.github.io/pics/snow.jpg" )%>%image_scale("x200") 
lea <- image_read("https://pcanals.github.io/pics/lea.jpg" )%>%image_scale("x200") 
playa <- image_read("https://pcanals.github.io/pics/playa.jpg" )%>%image_scale("x200")

life<-image_animate(c(bcn, trip, snow, playa, nieve, lea), 
                    fps = 1, dispose = "previous")

#Work

cv2 <- image_read_pdf("https://pcanals.github.io/pics/PilarCanals.pdf")%>%image_scale("x1000")

#Projects

git<-image_annotate(image_read("https://pcanals.github.io/pics/GIT.png" )%>%image_scale("x400"), 
                    "   go to github.com/PCANALS  ", size = 30, color = "white", boxcolor = "green2",
                    degrees = 10, location = "+50+280")

## Are u sure
what<-image_read("https://pcanals.github.io/pics/what.gif")
yeah<-image_read("https://pcanals.github.io/pics/yeah.gif")
sad<-image_read("https://pcanals.github.io/pics/sad.gif")

#first question

a<-as.numeric(menu(c("Yes", "No", "Maybe"), title="Do u wanna know my story?", graphics = TRUE))

repeat{
  if(a == 1){
    b<-as.numeric(menu(c("Life", "Work", "Projects", "End Process"), title="What do u want know?", graphics = TRUE))
    
    if (b==1){ print(life); print("Hi, I'm Pilar and I live in Barcelona, I love travelling,the snow and Lea, my puppy")}
    else if (b==2) {print(cv2); print("Check my cv on  www.linkedin.com/in/pilarcanals")}
    else if (b==3) {print(git); print("See my projects on Github https://github.com/PCANALS")}
    else if (b==4) { print("Thanks for fun the code!"); break;}
    
  }
  
  else if(a!=1) {
    print (what);
    c<-as.numeric(menu(c("no", "yes"), title="Are u sure?", graphics = TRUE ))
    if (c==1) {print(yeah); print("Yeii!, then let's back to the beginning")
      a<-1
    }
    else if (c==2) { print(sad); print("OK,  see you soon then...");
      break;
    }
  }
}

