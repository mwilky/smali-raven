.class public final synthetic Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic f$0:Lcom/android/server/incident/PendingReports;

.field public final synthetic f$1:Landroid/os/IIncidentAuthListener;

.field public final synthetic f$2:Landroid/content/ComponentName;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/incident/PendingReports;Landroid/os/IIncidentAuthListener;Landroid/content/ComponentName;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/incident/PendingReports;

    iput-object p2, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda2;->f$1:Landroid/os/IIncidentAuthListener;

    iput-object p3, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda2;->f$2:Landroid/content/ComponentName;

    iput p4, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda2;->f$3:I

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/incident/PendingReports;

    iget-object v1, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda2;->f$1:Landroid/os/IIncidentAuthListener;

    iget-object v2, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda2;->f$2:Landroid/content/ComponentName;

    iget p0, p0, Lcom/android/server/incident/PendingReports$$ExternalSyntheticLambda2;->f$3:I

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/incident/PendingReports;->$r8$lambda$Joo91M4wjdNITpLDr7zvkV9kN7Q(Lcom/android/server/incident/PendingReports;Landroid/os/IIncidentAuthListener;Landroid/content/ComponentName;I)V

    return-void
.end method
