.class public final synthetic Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Lcom/android/server/wm/StartingData;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;ZLcom/android/server/wm/StartingData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    iput-boolean p2, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda5;->f$1:Z

    iput-object p3, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda5;->f$2:Lcom/android/server/wm/StartingData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda5;->f$1:Z

    iget-object v2, p0, Lcom/android/server/wm/ActivityRecord$$ExternalSyntheticLambda5;->f$2:Lcom/android/server/wm/StartingData;

    invoke-static {v0, v1, v2}, Lcom/android/server/wm/ActivityRecord;->lambda$removeStartingWindowAnimation$5(Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;ZLcom/android/server/wm/StartingData;)V

    return-void
.end method
