.class public Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurResult;
.super Ljava/lang/Object;
.source "BlurProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/assist/uihints/BlurProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BlurResult"
.end annotation


# instance fields
.field public final cropRegion:Landroid/graphics/RectF;

.field public final drawable:Landroid/graphics/drawable/Drawable;

.field final synthetic this$0:Lcom/google/android/systemui/assist/uihints/BlurProvider;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/assist/uihints/BlurProvider;Landroid/graphics/drawable/Drawable;)V
    .locals 4

    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurResult;-><init>(Lcom/google/android/systemui/assist/uihints/BlurProvider;Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/systemui/assist/uihints/BlurProvider;Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurResult;->this$0:Lcom/google/android/systemui/assist/uihints/BlurProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurResult;->drawable:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurResult;->cropRegion:Landroid/graphics/RectF;

    return-void
.end method
