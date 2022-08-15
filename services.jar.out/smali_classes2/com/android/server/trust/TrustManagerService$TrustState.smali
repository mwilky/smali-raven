.class final enum Lcom/android/server/trust/TrustManagerService$TrustState;
.super Ljava/lang/Enum;
.source "TrustManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TrustState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/trust/TrustManagerService$TrustState;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/trust/TrustManagerService$TrustState;

.field public static final enum TRUSTABLE:Lcom/android/server/trust/TrustManagerService$TrustState;

.field public static final enum TRUSTED:Lcom/android/server/trust/TrustManagerService$TrustState;

.field public static final enum UNTRUSTED:Lcom/android/server/trust/TrustManagerService$TrustState;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/server/trust/TrustManagerService$TrustState;

    const-string v1, "UNTRUSTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/trust/TrustManagerService$TrustState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/trust/TrustManagerService$TrustState;->UNTRUSTED:Lcom/android/server/trust/TrustManagerService$TrustState;

    new-instance v1, Lcom/android/server/trust/TrustManagerService$TrustState;

    const-string v3, "TRUSTABLE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/server/trust/TrustManagerService$TrustState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/trust/TrustManagerService$TrustState;->TRUSTABLE:Lcom/android/server/trust/TrustManagerService$TrustState;

    new-instance v3, Lcom/android/server/trust/TrustManagerService$TrustState;

    const-string v5, "TRUSTED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/server/trust/TrustManagerService$TrustState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/server/trust/TrustManagerService$TrustState;->TRUSTED:Lcom/android/server/trust/TrustManagerService$TrustState;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/android/server/trust/TrustManagerService$TrustState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/android/server/trust/TrustManagerService$TrustState;->$VALUES:[Lcom/android/server/trust/TrustManagerService$TrustState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/trust/TrustManagerService$TrustState;
    .locals 1

    const-class v0, Lcom/android/server/trust/TrustManagerService$TrustState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/trust/TrustManagerService$TrustState;

    return-object p0
.end method

.method public static values()[Lcom/android/server/trust/TrustManagerService$TrustState;
    .locals 1

    sget-object v0, Lcom/android/server/trust/TrustManagerService$TrustState;->$VALUES:[Lcom/android/server/trust/TrustManagerService$TrustState;

    invoke-virtual {v0}, [Lcom/android/server/trust/TrustManagerService$TrustState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/trust/TrustManagerService$TrustState;

    return-object v0
.end method
