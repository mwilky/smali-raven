.class final enum Lcom/android/server/trust/TrustManagerService$TimeoutType;
.super Ljava/lang/Enum;
.source "TrustManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TimeoutType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/trust/TrustManagerService$TimeoutType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/trust/TrustManagerService$TimeoutType;

.field public static final enum TRUSTABLE:Lcom/android/server/trust/TrustManagerService$TimeoutType;

.field public static final enum TRUSTED:Lcom/android/server/trust/TrustManagerService$TimeoutType;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/server/trust/TrustManagerService$TimeoutType;

    const-string v1, "TRUSTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/trust/TrustManagerService$TimeoutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/trust/TrustManagerService$TimeoutType;->TRUSTED:Lcom/android/server/trust/TrustManagerService$TimeoutType;

    new-instance v1, Lcom/android/server/trust/TrustManagerService$TimeoutType;

    const-string v3, "TRUSTABLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/server/trust/TrustManagerService$TimeoutType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/trust/TrustManagerService$TimeoutType;->TRUSTABLE:Lcom/android/server/trust/TrustManagerService$TimeoutType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/android/server/trust/TrustManagerService$TimeoutType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/android/server/trust/TrustManagerService$TimeoutType;->$VALUES:[Lcom/android/server/trust/TrustManagerService$TimeoutType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/trust/TrustManagerService$TimeoutType;
    .locals 1

    const-class v0, Lcom/android/server/trust/TrustManagerService$TimeoutType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/trust/TrustManagerService$TimeoutType;

    return-object p0
.end method

.method public static values()[Lcom/android/server/trust/TrustManagerService$TimeoutType;
    .locals 1

    sget-object v0, Lcom/android/server/trust/TrustManagerService$TimeoutType;->$VALUES:[Lcom/android/server/trust/TrustManagerService$TimeoutType;

    invoke-virtual {v0}, [Lcom/android/server/trust/TrustManagerService$TimeoutType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/trust/TrustManagerService$TimeoutType;

    return-object v0
.end method
