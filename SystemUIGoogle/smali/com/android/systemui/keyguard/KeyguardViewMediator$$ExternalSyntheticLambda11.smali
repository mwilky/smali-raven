.class public final synthetic Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda11;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda11;-><init>()V

    sput-object v0, Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda11;->INSTANCE:Lcom/android/systemui/keyguard/KeyguardViewMediator$$ExternalSyntheticLambda11;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/unfold/SysUIUnfoldComponent;

    invoke-static {p1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->$r8$lambda$Ld6taWfJkbsDqf3L5p-IohBhTE0(Lcom/android/systemui/unfold/SysUIUnfoldComponent;)Lcom/android/systemui/unfold/UnfoldLightRevealOverlayAnimation;

    move-result-object p0

    return-object p0
.end method
