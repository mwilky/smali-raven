.class public final synthetic Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/CompanionDeviceManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    check-cast p1, Landroid/companion/AssociationInfo;

    invoke-static {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->$r8$lambda$ILqtqyjVllonSIXCsdX8a0zbcRs(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/companion/AssociationInfo;)Z

    move-result p0

    return p0
.end method
