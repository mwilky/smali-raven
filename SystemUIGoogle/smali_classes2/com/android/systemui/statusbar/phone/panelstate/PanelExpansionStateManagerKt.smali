.class public final Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManagerKt;
.super Ljava/lang/Object;
.source "PanelExpansionStateManager.kt"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManager;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManagerKt;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$stateToString(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/panelstate/PanelExpansionStateManagerKt;->stateToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final stateToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "OPEN"

    goto :goto_0

    :cond_1
    const-string p0, "OPENING"

    goto :goto_0

    :cond_2
    const-string p0, "CLOSED"

    :goto_0
    return-object p0
.end method
