.class public Lcom/airbnb/lottie/LottieImageAsset;
.super Ljava/lang/Object;
.source "LottieImageAsset.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private final dirName:Ljava/lang/String;

.field private final fileName:Ljava/lang/String;

.field private final height:I

.field private final id:Ljava/lang/String;

.field private final width:I


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/airbnb/lottie/LottieImageAsset;->width:I

    iput p2, p0, Lcom/airbnb/lottie/LottieImageAsset;->height:I

    iput-object p3, p0, Lcom/airbnb/lottie/LottieImageAsset;->id:Ljava/lang/String;

    iput-object p4, p0, Lcom/airbnb/lottie/LottieImageAsset;->fileName:Ljava/lang/String;

    iput-object p5, p0, Lcom/airbnb/lottie/LottieImageAsset;->dirName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieImageAsset;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieImageAsset;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method public getHeight()I
    .locals 0

    iget p0, p0, Lcom/airbnb/lottie/LottieImageAsset;->height:I

    return p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/airbnb/lottie/LottieImageAsset;->id:Ljava/lang/String;

    return-object p0
.end method

.method public getWidth()I
    .locals 0

    iget p0, p0, Lcom/airbnb/lottie/LottieImageAsset;->width:I

    return p0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/airbnb/lottie/LottieImageAsset;->bitmap:Landroid/graphics/Bitmap;

    return-void
.end method
