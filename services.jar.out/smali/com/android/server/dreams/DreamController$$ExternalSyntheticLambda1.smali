.class public final synthetic Lcom/android/server/dreams/DreamController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/dreams/DreamController;

.field public final synthetic f$1:Lcom/android/server/dreams/DreamController$DreamRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/dreams/DreamController;Lcom/android/server/dreams/DreamController$DreamRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/dreams/DreamController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/dreams/DreamController;

    iput-object p2, p0, Lcom/android/server/dreams/DreamController$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/dreams/DreamController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/dreams/DreamController;

    iget-object p0, p0, Lcom/android/server/dreams/DreamController$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/dreams/DreamController$DreamRecord;

    invoke-static {v0, p0}, Lcom/android/server/dreams/DreamController;->$r8$lambda$l7qszohe6DdTRzuFGFeC6E3UFwc(Lcom/android/server/dreams/DreamController;Lcom/android/server/dreams/DreamController$DreamRecord;)V

    return-void
.end method
