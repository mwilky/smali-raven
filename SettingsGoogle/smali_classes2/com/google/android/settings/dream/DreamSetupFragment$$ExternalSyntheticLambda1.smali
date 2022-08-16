.class public final synthetic Lcom/google/android/settings/dream/DreamSetupFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/google/android/settings/dream/DreamSetupFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/settings/dream/DreamSetupFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/settings/dream/DreamSetupFragment$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/settings/dream/DreamSetupFragment;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/settings/dream/DreamSetupFragment$$ExternalSyntheticLambda1;->f$0:Lcom/google/android/settings/dream/DreamSetupFragment;

    check-cast p1, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    invoke-static {p0, p1}, Lcom/google/android/settings/dream/DreamSetupFragment;->$r8$lambda$lTHbrf26HmtduiEky6afTRc5dLs(Lcom/google/android/settings/dream/DreamSetupFragment;Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)Lcom/google/android/settings/dream/DreamSetupFragment$DreamItem;

    move-result-object p0

    return-object p0
.end method
