.class public final synthetic Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;

.field public final synthetic f$1:Lcom/android/server/smartspace/SmartspacePerUserService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;Lcom/android/server/smartspace/SmartspacePerUserService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;

    iput-object p2, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/smartspace/SmartspacePerUserService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;

    iget-object p0, p0, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo$$ExternalSyntheticLambda0;->f$1:Lcom/android/server/smartspace/SmartspacePerUserService;

    check-cast p1, Landroid/app/smartspace/ISmartspaceCallback;

    invoke-static {v0, p0, p1}, Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;->$r8$lambda$cYLk0iQvs6SxsC7xgNel24O1Nps(Lcom/android/server/smartspace/SmartspacePerUserService$SmartspaceSessionInfo;Lcom/android/server/smartspace/SmartspacePerUserService;Landroid/app/smartspace/ISmartspaceCallback;)V

    return-void
.end method
