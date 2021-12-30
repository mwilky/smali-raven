.class public Lcom/google/android/setupdesign/util/ThemeResolver$Builder;
.super Ljava/lang/Object;
.source "ThemeResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupdesign/util/ThemeResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private defaultTheme:I

.field private defaultThemeSupplier:Lcom/google/android/setupdesign/util/ThemeResolver$ThemeSupplier;

.field private oldestSupportedTheme:Ljava/lang/String;

.field private useDayNight:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/google/android/setupdesign/R$style;->SudThemeGlif_DayNight:I

    iput v0, p0, Lcom/google/android/setupdesign/util/ThemeResolver$Builder;->defaultTheme:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/setupdesign/util/ThemeResolver$Builder;->oldestSupportedTheme:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/setupdesign/util/ThemeResolver$Builder;->useDayNight:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/setupdesign/util/ThemeResolver;
    .locals 7

    new-instance v6, Lcom/google/android/setupdesign/util/ThemeResolver;

    iget v1, p0, Lcom/google/android/setupdesign/util/ThemeResolver$Builder;->defaultTheme:I

    iget-object v2, p0, Lcom/google/android/setupdesign/util/ThemeResolver$Builder;->oldestSupportedTheme:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/setupdesign/util/ThemeResolver$Builder;->defaultThemeSupplier:Lcom/google/android/setupdesign/util/ThemeResolver$ThemeSupplier;

    iget-boolean v4, p0, Lcom/google/android/setupdesign/util/ThemeResolver$Builder;->useDayNight:Z

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/android/setupdesign/util/ThemeResolver;-><init>(ILjava/lang/String;Lcom/google/android/setupdesign/util/ThemeResolver$ThemeSupplier;ZLcom/google/android/setupdesign/util/ThemeResolver$1;)V

    return-object v6
.end method

.method public setDefaultTheme(I)Lcom/google/android/setupdesign/util/ThemeResolver$Builder;
    .locals 0

    iput p1, p0, Lcom/google/android/setupdesign/util/ThemeResolver$Builder;->defaultTheme:I

    return-object p0
.end method

.method public setUseDayNight(Z)Lcom/google/android/setupdesign/util/ThemeResolver$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/setupdesign/util/ThemeResolver$Builder;->useDayNight:Z

    return-object p0
.end method
