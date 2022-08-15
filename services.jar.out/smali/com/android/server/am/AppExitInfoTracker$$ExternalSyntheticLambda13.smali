.class public final synthetic Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiFunction;


# instance fields
.field public final synthetic f$0:Landroid/util/ArraySet;


# direct methods
.method public synthetic constructor <init>(Landroid/util/ArraySet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda13;->f$0:Landroid/util/ArraySet;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/AppExitInfoTracker$$ExternalSyntheticLambda13;->f$0:Landroid/util/ArraySet;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Landroid/app/ApplicationExitInfo;

    invoke-static {p0, p1, p2}, Lcom/android/server/am/AppExitInfoTracker;->$r8$lambda$jaxc00fP7hjwM81lCjgpwTh4_mU(Landroid/util/ArraySet;Ljava/lang/Integer;Landroid/app/ApplicationExitInfo;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
