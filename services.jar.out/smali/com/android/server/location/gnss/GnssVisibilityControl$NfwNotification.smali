.class Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;
.super Ljava/lang/Object;
.source "GnssVisibilityControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssVisibilityControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NfwNotification"
.end annotation


# static fields
.field private static final NFW_RESPONSE_TYPE_ACCEPTED_LOCATION_PROVIDED:B = 0x2t

.field private static final NFW_RESPONSE_TYPE_ACCEPTED_NO_LOCATION_PROVIDED:B = 0x1t

.field private static final NFW_RESPONSE_TYPE_REJECTED:B


# instance fields
.field private final mInEmergencyMode:Z

.field private final mIsCachedLocation:Z

.field private final mOtherProtocolStackName:Ljava/lang/String;

.field private final mProtocolStack:B

.field private final mProxyAppPackageName:Ljava/lang/String;

.field private final mRequestor:B

.field private final mRequestorId:Ljava/lang/String;

.field private final mResponseType:B


# direct methods
.method private constructor <init>(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mProxyAppPackageName:Ljava/lang/String;

    iput-byte p2, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mProtocolStack:B

    iput-object p3, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mOtherProtocolStackName:Ljava/lang/String;

    iput-byte p4, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mRequestor:B

    iput-object p5, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mRequestorId:Ljava/lang/String;

    iput-byte p6, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mResponseType:B

    iput-boolean p7, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mInEmergencyMode:Z

    iput-boolean p8, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mIsCachedLocation:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZLcom/android/server/location/gnss/GnssVisibilityControl$1;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;-><init>(Ljava/lang/String;BLjava/lang/String;BLjava/lang/String;BZZ)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)B
    .locals 1

    iget-byte v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mProtocolStack:B

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mOtherProtocolStackName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)B
    .locals 1

    iget-byte v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mRequestor:B

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mRequestorId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)B
    .locals 1

    iget-byte v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mResponseType:B

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mInEmergencyMode:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mIsCachedLocation:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->isEmergencyRequestNotification()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mProxyAppPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->isRequestAccepted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->isRequestAttributedToProxyApp()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->isLocationProvided()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->getResponseTypeAsString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getResponseTypeAsString()Ljava/lang/String;
    .locals 1

    iget-byte v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mResponseType:B

    packed-switch v0, :pswitch_data_0

    const-string v0, "<Unknown>"

    return-object v0

    :pswitch_0
    const-string v0, "ACCEPTED_LOCATION_PROVIDED"

    return-object v0

    :pswitch_1
    const-string v0, "ACCEPTED_NO_LOCATION_PROVIDED"

    return-object v0

    :pswitch_2
    const-string v0, "REJECTED"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isEmergencyRequestNotification()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mInEmergencyMode:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->isRequestAttributedToProxyApp()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isLocationProvided()Z
    .locals 2

    iget-byte v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mResponseType:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isRequestAccepted()Z
    .locals 1

    iget-byte v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mResponseType:B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isRequestAttributedToProxyApp()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mProxyAppPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mProxyAppPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-byte v1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mProtocolStack:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mOtherProtocolStackName:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-byte v1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mRequestor:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mRequestorId:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->getResponseTypeAsString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mInEmergencyMode:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssVisibilityControl$NfwNotification;->mIsCachedLocation:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "{proxyAppPackageName: %s, protocolStack: %d, otherProtocolStackName: %s, requestor: %d, requestorId: %s, responseType: %s, inEmergencyMode: %b, isCachedLocation: %b}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
