//
//  ViewController.m
//  weather
//
//  Created by Andrey Goncharenko on 12.05.22.
//

#import "ViewController.h"

NSDictionary *temperatures;
NSDictionary *places;
NSDictionary *informations;
NSDictionary *tempColor;

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *labelWeather;
@property (weak, nonatomic) IBOutlet UITextField *inputField;
@property (weak, nonatomic) IBOutlet UIImageView *imagePlace;
@property (weak, nonatomic) IBOutlet UILabel *infoPlace;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"bg1.jpg"]];
    self.infoPlace.layer.masksToBounds = TRUE;
    self.imagePlace.layer.masksToBounds = TRUE;
    self.imagePlace.layer.cornerRadius = 8;
    self.infoPlace.layer.cornerRadius = 8;
    self.view.layer.cornerRadius = 8;
    temperatures = [NSMutableDictionary dictionary];
    places = [NSMutableDictionary dictionary];
    informations = [NSMutableDictionary dictionary];
    tempColor = [NSMutableDictionary dictionary];
    
    [temperatures setValue:[NSNumber numberWithInt:9] forKey:@"Minsk"];
    [temperatures setValue:[NSNumber numberWithInt:20] forKey:@"Gomel"];
    [temperatures setValue:[NSNumber numberWithInt:13] forKey:@"Grodno"];
    [temperatures setValue:[NSNumber numberWithInt:7] forKey:@"SPB"];
    [temperatures setValue:[NSNumber numberWithInt:14] forKey:@"Moscow"];
    
    [places setValue:@"KFC" forKey:@"Minsk"];
    [places setValue:@"Fasol" forKey:@"Gomel"];
    [places setValue:@"H2O" forKey:@"Grodno"];
    [places setValue:@"Block" forKey:@"SPB"];
    [places setValue:@"Kaif" forKey:@"Moscow"];
    
    [informations setValue:@"KFC - международная сеть ресторанов общественного питания, специализирующаяся на блюдах из курицы. Штаб-квартира компании располагается в городе Луисвилле в штате Кентукки." forKey:@"Minsk"];
    [informations setValue:@"Fasol - Уютное место с адекватными ценами и вкусной едой. Живая музыка отсутсвует, но это восполняется концертами известных исполнителей с трансляцией на экране." forKey:@"Gomel"];
    [informations setValue:@"H2O - Уютная атмосфера, красивый зал. Очень милый и современный интерьер. Обслуживание тоже понравилось, приятный персонал." forKey:@"Grodno"];
    [informations setValue:@"Block - место где в первую очередь стоит идти за мясом и атмосферой. Стейки всегда прекрасно приготовлены, а интерьер словно переносит вас в роман Фицджеральда. Лоск интерьера в стиле 20х - 30х годов, отлично дополняет кухню." forKey:@"SPB"];
    [informations setValue:@"Kaif - Модный бар-ресторан в украшенном растениями атриуме с широким ассортиментом напитков и необычными вариантами местных блюд." forKey:@"Moscow"];
    
    // Do any additional setup after loading the view.
}


- (IBAction)buttonWeather:(id)sender {
    _labelWeather.textAlignment = NSTextAlignmentCenter;
    
    NSString *cityName = _inputField.text;
    NSNumber *temp = [temperatures objectForKey:cityName];
    NSString *info = [informations objectForKey:cityName];
    NSString *image = [places objectForKey:cityName];
    //NSNumber *ten = [NSNumber numberWithInt:10];
    //NSNumber *sixteen = [NSNumber numberWithInt:16];
    _infoPlace.textColor = [UIColor whiteColor];

    
    if (temp == nil){
        _labelWeather.text = @"~ C";
        _infoPlace.text = @"We can't find the information you need";
    }
    else{
        if(temp.intValue <= 10){
            _labelWeather.textColor = [UIColor whiteColor];
        }
        else{
            if(temp.intValue <= 16){
                _labelWeather.textColor = [UIColor yellowColor];
            }
            if(temp.intValue > 16){
                _labelWeather.textColor = [UIColor redColor];
            }
        }
        
        _labelWeather.text = ([[temp stringValue] stringByAppendingString:@" C"]);
        _infoPlace.text = info;
        _imagePlace.image = [UIImage imageNamed:image];
    }
}


@end
