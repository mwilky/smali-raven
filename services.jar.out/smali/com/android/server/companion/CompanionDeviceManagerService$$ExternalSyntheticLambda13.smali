.class public final synthetic Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/CompanionDeviceManagerService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    iput p2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda13;->f$1:I

    iput-object p3, p0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda13;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda13;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda13;->f$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    iget v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda13;->f$1:I

    iget-object v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda13;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda13;->f$3:Ljava/lang/String;

    check-cast p1, Ljava/util/Set;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->lambda$removeAssociation$1$CompanionDeviceManagerService(ILjava/lang/String;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
