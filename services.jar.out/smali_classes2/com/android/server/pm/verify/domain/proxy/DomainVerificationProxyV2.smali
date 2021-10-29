.class public Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;
.super Ljava/lang/Object;
.source "DomainVerificationProxyV2.java"

# interfaces
.implements Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2$Connection;
    }
.end annotation


# static fields
.field private static final DEBUG_BROADCASTS:Z = false

.field private static final TAG:Ljava/lang/String; = "DomainVerificationProxyV2"


# instance fields
.field private final mConnection:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2$Connection;

.field private final mContext:Landroid/content/Context;

.field private final mVerifierComponent:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2$Connection;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;->mConnection:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2$Connection;

    iput-object p3, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;->mVerifierComponent:Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;->mVerifierComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public isCallerVerifier(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;->mConnection:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2$Connection;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;->mVerifierComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2$Connection;->isCallerPackage(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public runMessage(ILjava/lang/Object;)Z
    .locals 15

    move-object v0, p0

    packed-switch p1, :pswitch_data_0

    const/4 v1, 0x0

    return v1

    :pswitch_0
    move-object/from16 v1, p2

    check-cast v1, Ljava/util/Set;

    new-instance v2, Landroid/content/pm/verify/domain/DomainVerificationRequest;

    invoke-direct {v2, v1}, Landroid/content/pm/verify/domain/DomainVerificationRequest;-><init>(Ljava/util/Set;)V

    iget-object v3, v0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;->mConnection:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2$Connection;

    invoke-interface {v3}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2$Connection;->getPowerSaveTempWhitelistAppDuration()J

    move-result-wide v13

    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object v3

    const/4 v7, 0x0

    const/16 v8, 0x134

    const-string v9, ""

    move-object v4, v3

    move-wide v5, v13

    invoke-virtual/range {v4 .. v9}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    iget-object v4, v0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;->mConnection:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2$Connection;

    invoke-interface {v4}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2$Connection;->getDeviceIdleInternal()Lcom/android/server/DeviceIdleInternal;

    move-result-object v4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    iget-object v6, v0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;->mVerifierComponent:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/16 v11, 0x134

    const-string v12, "domain verification agent"

    move-wide v7, v13

    invoke-interface/range {v4 .. v12}, Lcom/android/server/DeviceIdleInternal;->addPowerSaveTempWhitelistApp(ILjava/lang/String;JIZILjava/lang/String;)V

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.DOMAINS_NEED_VERIFICATION"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;->mVerifierComponent:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.content.pm.verify.domain.extra.VERIFICATION_REQUEST"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    iget-object v5, v0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v7, 0x0

    invoke-virtual {v3}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {v5, v4, v6, v7, v8}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V

    const/4 v5, 0x1

    return v5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public sendBroadcastForPackages(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2;->mConnection:Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2$Connection;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyV2$Connection;->schedule(ILjava/lang/Object;)V

    return-void
.end method
