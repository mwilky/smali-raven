.class public final synthetic Lcom/google/android/systemui/gamedashboard/ScreenRecordController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/gamedashboard/ScreenRecordController;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/gamedashboard/ScreenRecordController;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/gamedashboard/ScreenRecordController;

    iput-object p2, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onDismiss()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/gamedashboard/ScreenRecordController;

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ScreenRecordController$$ExternalSyntheticLambda0;->f$1:Landroid/content/Intent;

    invoke-static {v0, p0}, Lcom/google/android/systemui/gamedashboard/ScreenRecordController;->$r8$lambda$Nqhd2daMg0sPfq_bCZrR4CfuhtU(Lcom/google/android/systemui/gamedashboard/ScreenRecordController;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method
