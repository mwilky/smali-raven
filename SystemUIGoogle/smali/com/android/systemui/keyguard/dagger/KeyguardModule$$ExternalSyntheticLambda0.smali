.class public final synthetic Lcom/android/systemui/keyguard/dagger/KeyguardModule$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/keyguard/dagger/KeyguardModule$$ExternalSyntheticLambda0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/systemui/keyguard/dagger/KeyguardModule$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/android/systemui/keyguard/dagger/KeyguardModule$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/systemui/keyguard/dagger/KeyguardModule$$ExternalSyntheticLambda0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/hardware/face/FaceSensorPropertiesInternal;

    invoke-static {p1}, Lcom/android/systemui/keyguard/dagger/KeyguardModule;->$r8$lambda$32XdJ-BW0yXaISMwv0yghYubKE8(Landroid/hardware/face/FaceSensorPropertiesInternal;)Z

    move-result p0

    return p0
.end method
