.class final Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$getUnfoldedDisplayInfo$1;
.super Lkotlin/jvm/internal/Lambda;
.source "UnfoldLightRevealOverlayAnimation.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;->getUnfoldedDisplayInfo()Landroid/view/DisplayInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/Display;",
        "Landroid/view/DisplayInfo;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUnfoldLightRevealOverlayAnimation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UnfoldLightRevealOverlayAnimation.kt\ncom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$getUnfoldedDisplayInfo$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,271:1\n1#2:272\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$getUnfoldedDisplayInfo$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$getUnfoldedDisplayInfo$1;

    invoke-direct {v0}, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$getUnfoldedDisplayInfo$1;-><init>()V

    sput-object v0, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$getUnfoldedDisplayInfo$1;->INSTANCE:Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$getUnfoldedDisplayInfo$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/view/Display;)Landroid/view/DisplayInfo;
    .locals 0

    new-instance p0, Landroid/view/DisplayInfo;

    invoke-direct {p0}, Landroid/view/DisplayInfo;-><init>()V

    invoke-virtual {p1, p0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/Display;

    invoke-virtual {p0, p1}, Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation$getUnfoldedDisplayInfo$1;->invoke(Landroid/view/Display;)Landroid/view/DisplayInfo;

    move-result-object p0

    return-object p0
.end method
