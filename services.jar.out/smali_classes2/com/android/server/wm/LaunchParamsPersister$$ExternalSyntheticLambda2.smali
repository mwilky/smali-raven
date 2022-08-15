.class public final synthetic Lcom/android/server/wm/LaunchParamsPersister$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/LaunchParamsPersister;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/LaunchParamsPersister;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/LaunchParamsPersister$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/LaunchParamsPersister;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/LaunchParamsPersister$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/wm/LaunchParamsPersister;

    check-cast p1, Landroid/content/ComponentName;

    invoke-static {p0, p1}, Lcom/android/server/wm/LaunchParamsPersister;->$r8$lambda$NFFd1vprOhE8FxlUfkIFrf3D97c(Lcom/android/server/wm/LaunchParamsPersister;Landroid/content/ComponentName;)Lcom/android/server/wm/LaunchParamsPersister$PersistableLaunchParams;

    move-result-object p0

    return-object p0
.end method
