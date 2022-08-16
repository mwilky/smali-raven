.class public final Lcom/android/systemui/statusbar/phone/NotificationPanelUnfoldAnimationController;
.super Ljava/lang/Object;
.source "NotificationPanelUnfoldAnimationController.kt"


# instance fields
.field public final context:Landroid/content/Context;

.field public final translateAnimator$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelUnfoldAnimationController;->context:Landroid/content/Context;

    new-instance p1, Lcom/android/systemui/statusbar/phone/NotificationPanelUnfoldAnimationController$translateAnimator$2;

    invoke-direct {p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelUnfoldAnimationController$translateAnimator$2;-><init>(Lcom/android/systemui/unfold/util/NaturalRotationUnfoldProgressProvider;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelUnfoldAnimationController;->translateAnimator$delegate:Lkotlin/Lazy;

    return-void
.end method
