.class public final synthetic Lcom/android/server/pm/dex/ArtManagerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/dex/ArtManagerService$$ExternalSyntheticLambda0;->f$0:Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;

    iput p2, p0, Lcom/android/server/pm/dex/ArtManagerService$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Lcom/android/server/pm/dex/ArtManagerService$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/dex/ArtManagerService$$ExternalSyntheticLambda0;->f$0:Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;

    iget v1, p0, Lcom/android/server/pm/dex/ArtManagerService$$ExternalSyntheticLambda0;->f$1:I

    iget-object p0, p0, Lcom/android/server/pm/dex/ArtManagerService$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/android/server/pm/dex/ArtManagerService;->$r8$lambda$dmR_bGEH0KrwULZ-7hRCD3pHSTU(Landroid/content/pm/dex/ISnapshotRuntimeProfileCallback;ILjava/lang/String;)V

    return-void
.end method
