.class public final synthetic Lcom/android/systemui/Dependency$$ExternalSyntheticLambda25;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/systemui/Dependency$LazyDependencyCreator;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ldagger/Lazy;


# direct methods
.method public synthetic constructor <init>(Ldagger/Lazy;I)V
    .locals 0

    iput p2, p0, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda25;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda25;->f$0:Ldagger/Lazy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createDependency()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda25;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/Dependency$$ExternalSyntheticLambda25;->f$0:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
