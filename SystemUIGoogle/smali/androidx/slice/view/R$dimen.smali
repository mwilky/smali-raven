.class public Landroidx/slice/view/R$dimen;
.super Ljava/lang/Object;
.source "R.java"


# static fields
.field public static final BannerMessagePreference:[I

.field public static final ButtonPreference:[I

.field public static final LottieAnimationView:[I

.field public static final Preference:[I

.field public static final SettingsBarView:[I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidx/slice/view/R$dimen;->BannerMessagePreference:[I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10100af

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Landroidx/slice/view/R$dimen;->ButtonPreference:[I

    const/16 v1, 0x10

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    sput-object v1, Landroidx/slice/view/R$dimen;->LottieAnimationView:[I

    const/16 v1, 0x24

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    sput-object v1, Landroidx/slice/view/R$dimen;->Preference:[I

    new-array v0, v0, [I

    const v1, 0x7f04005f

    aput v1, v0, v3

    sput-object v0, Landroidx/slice/view/R$dimen;->SettingsBarView:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f040041
        0x7f0404c0
    .end array-data

    :array_1
    .array-data 4
        0x7f040333
        0x7f040334
        0x7f040335
        0x7f040336
        0x7f040337
        0x7f040338
        0x7f040339
        0x7f04033a
        0x7f04033b
        0x7f04033c
        0x7f04033d
        0x7f04033e
        0x7f04033f
        0x7f040340
        0x7f040341
        0x7f040342
    .end array-data

    :array_2
    .array-data 4
        0x1010002
        0x101000d
        0x101000e
        0x10100f2
        0x10101e1
        0x10101e6
        0x10101e8
        0x10101e9
        0x10101ea
        0x10101eb
        0x10101ec
        0x10101ed
        0x10101ee
        0x10102e3
        0x101055c
        0x1010561
        0x7f04002f
        0x7f040031
        0x7f040167
        0x7f04016a
        0x7f0401a8
        0x7f0401aa
        0x7f040216
        0x7f04027d
        0x7f040283
        0x7f0402a3
        0x7f0402c3
        0x7f0402ce
        0x7f0403ce
        0x7f0403f0
        0x7f04046d
        0x7f04047e
        0x7f040491
        0x7f040542
        0x7f0405c0
        0x7f04060c
    .end array-data
.end method

.method public static final roundToInt(F)I
    .locals 1

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot round NaN value."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
