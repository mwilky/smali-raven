.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/DropBoxManager;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/os/DropBoxManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda13;->f$0:Landroid/os/DropBoxManager;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda13;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda13;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda13;->f$0:Landroid/os/DropBoxManager;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda13;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda13;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/android/server/am/ActivityManagerService;->$r8$lambda$0MUCQPSj0khY7CSsocrnTh55H9M(Landroid/os/DropBoxManager;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
