.class public final synthetic Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/apphibernation/AppHibernationService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/android/server/apphibernation/UserLevelState;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/apphibernation/AppHibernationService;Ljava/lang/String;ILcom/android/server/apphibernation/UserLevelState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/apphibernation/AppHibernationService;

    iput-object p2, p0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda2;->f$2:I

    iput-object p4, p0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda2;->f$3:Lcom/android/server/apphibernation/UserLevelState;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/apphibernation/AppHibernationService;

    iget-object v1, p0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda2;->f$1:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda2;->f$2:I

    iget-object p0, p0, Lcom/android/server/apphibernation/AppHibernationService$$ExternalSyntheticLambda2;->f$3:Lcom/android/server/apphibernation/UserLevelState;

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/apphibernation/AppHibernationService;->$r8$lambda$4IW_SnBZdZYxEU8rMJaUPJ94PaQ(Lcom/android/server/apphibernation/AppHibernationService;Ljava/lang/String;ILcom/android/server/apphibernation/UserLevelState;)V

    return-void
.end method
