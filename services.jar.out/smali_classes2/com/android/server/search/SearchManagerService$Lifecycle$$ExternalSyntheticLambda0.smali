.class public final synthetic Lcom/android/server/search/SearchManagerService$Lifecycle$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/search/SearchManagerService$Lifecycle;

.field public final synthetic f$1:Lcom/android/server/SystemService$TargetUser;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/search/SearchManagerService$Lifecycle;Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/search/SearchManagerService$Lifecycle$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/search/SearchManagerService$Lifecycle;

    iput-object p2, p0, Lcom/android/server/search/SearchManagerService$Lifecycle$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/SystemService$TargetUser;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/search/SearchManagerService$Lifecycle$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/search/SearchManagerService$Lifecycle;

    iget-object p0, p0, Lcom/android/server/search/SearchManagerService$Lifecycle$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/SystemService$TargetUser;

    invoke-static {v0, p0}, Lcom/android/server/search/SearchManagerService$Lifecycle;->$r8$lambda$ypVX8oQvpZGvGCobQRxZusMCG5k(Lcom/android/server/search/SearchManagerService$Lifecycle;Lcom/android/server/SystemService$TargetUser;)V

    return-void
.end method
