.class public Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxyUnavailable;
.super Ljava/lang/Object;
.source "DomainVerificationProxyUnavailable.java"

# interfaces
.implements Lcom/android/server/pm/verify/domain/proxy/DomainVerificationProxy;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isCallerVerifier(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public runMessage(ILjava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public sendBroadcastForPackages(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
