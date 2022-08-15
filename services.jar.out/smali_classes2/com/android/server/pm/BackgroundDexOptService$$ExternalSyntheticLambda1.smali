.class public final synthetic Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/BackgroundDexOptService;

.field public final synthetic f$1:Lcom/android/server/pm/PackageManagerService;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Landroid/app/job/JobParameters;

.field public final synthetic f$4:Lcom/android/server/pm/BackgroundDexOptJobService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/BackgroundDexOptService;Lcom/android/server/pm/PackageManagerService;Ljava/util/List;Landroid/app/job/JobParameters;Lcom/android/server/pm/BackgroundDexOptJobService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/BackgroundDexOptService;

    iput-object p2, p0, Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/pm/PackageManagerService;

    iput-object p3, p0, Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda1;->f$2:Ljava/util/List;

    iput-object p4, p0, Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda1;->f$3:Landroid/app/job/JobParameters;

    iput-object p5, p0, Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda1;->f$4:Lcom/android/server/pm/BackgroundDexOptJobService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/pm/BackgroundDexOptService;

    iget-object v1, p0, Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/pm/PackageManagerService;

    iget-object v2, p0, Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda1;->f$2:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda1;->f$3:Landroid/app/job/JobParameters;

    iget-object p0, p0, Lcom/android/server/pm/BackgroundDexOptService$$ExternalSyntheticLambda1;->f$4:Lcom/android/server/pm/BackgroundDexOptJobService;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/server/pm/BackgroundDexOptService;->$r8$lambda$ELonELsatTgdaseDEofEmuJoJXM(Lcom/android/server/pm/BackgroundDexOptService;Lcom/android/server/pm/PackageManagerService;Ljava/util/List;Landroid/app/job/JobParameters;Lcom/android/server/pm/BackgroundDexOptJobService;)V

    return-void
.end method
