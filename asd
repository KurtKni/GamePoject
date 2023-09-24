import pygame

pygame.init()

SCREEN_WIDTH = 300
SCREEN_HEIGHT = 300

screen = pygame.display.set_mode((SCREEN_WIDTH, SCREEN_HEIGHT))
pygame.display.set_caption("KKK")

sprite_sheet_image = pygame.image.load('RunnerRookie.png').convert_alpha()


BG = (50, 50, 50)
def get_imgage(sheet, width, height, scale):
    image = pygame.Surface((width, height)).convert_alpha()
    image.blit(sheet, (0, 0),(0, 0, width, height))
    image = pygame.transform.scale(image, (width * scale, height * scale))

    return image


frame_0 = get_imgage(sprite_sheet_image, 24, 24, 24)

run = True
while run:

    # Update BackGround
    screen.fill((123,123,123))

    # show frame image
    screen.blit(frame_0, (0,0))

    # event handler
    for event in pygame.event.get():
        if event.type == pygame.QUIT:
            run = False


    pygame.display.update()

pygame.quit()
