.class public final synthetic Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityTaskSupervisor;

.field public final synthetic f$1:Landroid/content/pm/ActivityInfo;

.field public final synthetic f$2:I

.field public final synthetic f$3:Landroid/app/ProfilerInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityTaskSupervisor;Landroid/content/pm/ActivityInfo;ILandroid/app/ProfilerInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda3;->f$1:Landroid/content/pm/ActivityInfo;

    iput p3, p0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda3;->f$2:I

    iput-object p4, p0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda3;->f$3:Landroid/app/ProfilerInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda3;->f$1:Landroid/content/pm/ActivityInfo;

    iget v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda3;->f$2:I

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda3;->f$3:Landroid/app/ProfilerInfo;

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->$r8$lambda$UagMtKTmbthHPYNm2EWRHLra0n4(Lcom/android/server/wm/ActivityTaskSupervisor;Landroid/content/pm/ActivityInfo;ILandroid/app/ProfilerInfo;)V

    return-void
.end method
