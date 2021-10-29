.class Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;
.super Ljava/lang/Object;
.source "BlurProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/assist/uihints/BlurProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BlurKernel"
.end annotation


# instance fields
.field private final mBlurRenderScript:Landroid/renderscript/RenderScript;

.field private final mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

.field private mLastInputAllocation:Landroid/renderscript/Allocation;

.field private mLastInputBitmap:Landroid/graphics/Bitmap;

.field private mLastOutputAllocation:Landroid/renderscript/Allocation;

.field private mLastOutputBitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->mBlurRenderScript:Landroid/renderscript/RenderScript;

    invoke-static {p1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    return-void
.end method

.method private static canShareAllocations(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method private createAllocationForBitmap(Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;
    .locals 2

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->mBlurRenderScript:Landroid/renderscript/RenderScript;

    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object p0

    return-object p0
.end method

.method private prepareInputAllocation(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->mLastInputBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, p1}, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->canShareAllocations(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z

    move-result v0

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->mLastInputBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->mLastInputAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {p0, p1}, Landroid/renderscript/Allocation;->copyFrom(Landroid/graphics/Bitmap;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->mLastInputAllocation:Landroid/renderscript/Allocation;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->destroy()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->mLastInputAllocation:Landroid/renderscript/Allocation;

    :cond_1
    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->mLastInputBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->createAllocationForBitmap(Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->mLastInputAllocation:Landroid/renderscript/Allocation;

    :cond_2
    return-void
.end method

.method private prepareOutputAllocation(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->mLastOutputAllocation:Landroid/renderscript/Allocation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->mLastOutputBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, p1}, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->canShareAllocations(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->mLastOutputAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->mLastOutputAllocation:Landroid/renderscript/Allocation;

    :cond_0
    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->mLastOutputBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->mLastOutputAllocation:Landroid/renderscript/Allocation;

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->createAllocationForBitmap(Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->mLastOutputAllocation:Landroid/renderscript/Allocation;

    :cond_1
    return-void
.end method


# virtual methods
.method public blur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;F)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->prepareInputAllocation(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, p2}, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->prepareOutputAllocation(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    const/high16 v0, 0x41c80000    # 25.0f

    invoke-static {p3, p1, v0}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p1

    iget-object p3, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    invoke-virtual {p3, p1}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    iget-object p3, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->mLastInputAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {p1, p3}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->mBlurScript:Landroid/renderscript/ScriptIntrinsicBlur;

    iget-object p3, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->mLastOutputAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {p1, p3}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->mLastOutputAllocation:Landroid/renderscript/Allocation;

    invoke-virtual {p0, p2}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public clearCaches()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->prepareInputAllocation(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, v0}, Lcom/google/android/systemui/assist/uihints/BlurProvider$BlurKernel;->prepareOutputAllocation(Landroid/graphics/Bitmap;)V

    return-void
.end method
