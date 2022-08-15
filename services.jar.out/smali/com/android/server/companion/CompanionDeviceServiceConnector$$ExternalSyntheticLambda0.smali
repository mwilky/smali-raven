.class public final synthetic Lcom/android/server/companion/CompanionDeviceServiceConnector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:Lcom/android/server/companion/CompanionDeviceServiceConnector;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/companion/CompanionDeviceServiceConnector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceServiceConnector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/CompanionDeviceServiceConnector;

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceServiceConnector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/companion/CompanionDeviceServiceConnector;

    check-cast p1, Landroid/companion/ICompanionDeviceService;

    invoke-static {p0, p1}, Lcom/android/server/companion/CompanionDeviceServiceConnector;->$r8$lambda$sNeZKiIS_fO2zUJIY6SZj_-G5xI(Lcom/android/server/companion/CompanionDeviceServiceConnector;Landroid/companion/ICompanionDeviceService;)V

    return-void
.end method
