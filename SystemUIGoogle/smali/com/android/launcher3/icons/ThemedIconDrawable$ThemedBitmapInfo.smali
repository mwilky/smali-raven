.class public Lcom/android/launcher3/icons/ThemedIconDrawable$ThemedBitmapInfo;
.super Lcom/android/launcher3/icons/BitmapInfo;
.source "ThemedIconDrawable.java"


# instance fields
.field final mNormalizationScale:F

.field final mThemeData:Lcom/android/launcher3/icons/ThemedIconDrawable$ThemeData;

.field final mUserBadge:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;ILcom/android/launcher3/icons/ThemedIconDrawable$ThemeData;FLandroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/icons/BitmapInfo;-><init>(Landroid/graphics/Bitmap;I)V

    iput-object p3, p0, Lcom/android/launcher3/icons/ThemedIconDrawable$ThemedBitmapInfo;->mThemeData:Lcom/android/launcher3/icons/ThemedIconDrawable$ThemeData;

    iput p4, p0, Lcom/android/launcher3/icons/ThemedIconDrawable$ThemedBitmapInfo;->mNormalizationScale:F

    iput-object p5, p0, Lcom/android/launcher3/icons/ThemedIconDrawable$ThemedBitmapInfo;->mUserBadge:Landroid/graphics/Bitmap;

    return-void
.end method
