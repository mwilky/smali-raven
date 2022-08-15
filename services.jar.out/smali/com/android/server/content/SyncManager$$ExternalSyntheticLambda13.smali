.class public final synthetic Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda13;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda13;->f$1:Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda13;->f$0:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/content/SyncManager$$ExternalSyntheticLambda13;->f$1:Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;

    invoke-static {v0, p0}, Lcom/android/server/content/SyncManager;->$r8$lambda$6WOZ6whe3aGhtRg8ibCORDX2qG0(Landroid/content/Context;Lcom/android/server/content/SyncManager$OnUnsyncableAccountCheck;)V

    return-void
.end method
