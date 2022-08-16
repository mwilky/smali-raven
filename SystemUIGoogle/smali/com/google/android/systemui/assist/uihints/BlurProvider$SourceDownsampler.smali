.class public final Lcom/google/android/systemui/assist/uihints/BlurProvider$SourceDownsampler;
.super Ljava/lang/Object;
.source "BlurProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/assist/uihints/BlurProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SourceDownsampler"
.end annotation


# instance fields
.field public final mDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider$SourceDownsampler;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method
