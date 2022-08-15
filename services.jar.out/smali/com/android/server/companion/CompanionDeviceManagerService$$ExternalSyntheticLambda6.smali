.class public final synthetic Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda6;->f$0:I

    iput-object p2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda6;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda6;->f$0:I

    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$$ExternalSyntheticLambda6;->f$1:Ljava/util/List;

    check-cast p1, Landroid/companion/IOnAssociationsChangedListener;

    invoke-static {v0, p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->$r8$lambda$LDq8JXIf4RjfGxdz6snSWHSn1Dk(ILjava/util/List;Landroid/companion/IOnAssociationsChangedListener;Ljava/lang/Object;)V

    return-void
.end method
