.class public final synthetic Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$$ExternalSyntheticLambda1;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$$ExternalSyntheticLambda1;->INSTANCE:Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$$ExternalSyntheticLambda1;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$CandidateWifiConfig;

    check-cast p2, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$CandidateWifiConfig;

    invoke-static {p1, p2}, Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver;->$r8$lambda$L-glu7Oo-XMttF9u6Lb5c-fbN3E(Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$CandidateWifiConfig;Lcom/google/android/wifitrackerlib/WsuPostProvisioningReceiver$CandidateWifiConfig;)I

    move-result p0

    return p0
.end method
