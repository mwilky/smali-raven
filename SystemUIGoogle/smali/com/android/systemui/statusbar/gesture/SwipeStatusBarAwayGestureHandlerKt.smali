.class public final Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandlerKt;
.super Ljava/lang/Object;
.source "SwipeStatusBarAwayGestureHandler.kt"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandler;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandlerKt;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getTAG$p()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/gesture/SwipeStatusBarAwayGestureHandlerKt;->TAG:Ljava/lang/String;

    return-object v0
.end method
