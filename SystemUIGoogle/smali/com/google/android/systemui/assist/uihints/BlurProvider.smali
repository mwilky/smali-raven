.class public final Lcom/google/android/systemui/assist/uihints/BlurProvider;
.super Ljava/lang/Object;
.source "BlurProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;,
        Lcom/google/android/systemui/assist/uihints/BlurProvider$SourceDownsampler;,
        Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurResult;
    }
.end annotation


# instance fields
.field public final mBlurKernel:Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;

.field public mBuffer:Landroid/graphics/Bitmap;

.field public final mImageSource:Lcom/google/android/systemui/assist/uihints/BlurProvider$SourceDownsampler;

.field public final mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider;->mResources:Landroid/content/res/Resources;

    new-instance v0, Lcom/google/android/systemui/assist/uihints/BlurProvider$SourceDownsampler;

    invoke-direct {v0, p2}, Lcom/google/android/systemui/assist/uihints/BlurProvider$SourceDownsampler;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider;->mImageSource:Lcom/google/android/systemui/assist/uihints/BlurProvider$SourceDownsampler;

    new-instance p2, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;

    invoke-direct {p2, p1}, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider;->mBlurKernel:Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;

    return-void
.end method
