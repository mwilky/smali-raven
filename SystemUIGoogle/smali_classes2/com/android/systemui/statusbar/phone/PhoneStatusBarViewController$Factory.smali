.class public final Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;
.super Ljava/lang/Object;
.source "PhoneStatusBarViewController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPhoneStatusBarViewController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PhoneStatusBarViewController.kt\ncom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory\n+ 2 nullability.kt\ncom/android/systemui/util/kotlin/NullabilityKt\n*L\n1#1,135:1\n29#2:136\n29#2:137\n*E\n*S KotlinDebug\n*F\n+ 1 PhoneStatusBarViewController.kt\ncom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory\n*L\n127#1:136\n130#1:137\n*E\n"
.end annotation


# instance fields
.field private final progressProvider:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;",
            ">;"
        }
    .end annotation
.end field

.field private final unfoldComponent:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/systemui/unfold/SysUIUnfoldComponent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Optional;Ljava/util/Optional;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/unfold/SysUIUnfoldComponent;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;",
            ">;)V"
        }
    .end annotation

    const-string v0, "unfoldComponent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "progressProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->unfoldComponent:Ljava/util/Optional;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->progressProvider:Ljava/util/Optional;

    return-void
.end method


# virtual methods
.method public final create(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$TouchEventHandler;)Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;
    .locals 7

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "touchEventHandler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->progressProvider:Ljava/util/Optional;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory;->unfoldComponent:Ljava/util/Optional;

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory$create$1;->INSTANCE:Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$Factory$create$1;

    invoke-virtual {p0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const-string v1, "unfoldComponent.map {\n                    it.getStatusBarMoveFromCenterAnimationController()\n                }"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Lcom/android/systemui/unfold/util/ScopedUnfoldTransitionProgressProvider;Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$TouchEventHandler;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
