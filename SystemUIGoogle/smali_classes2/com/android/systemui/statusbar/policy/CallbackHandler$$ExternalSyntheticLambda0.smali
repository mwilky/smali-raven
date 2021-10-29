.class public final synthetic Lcom/android/systemui/statusbar/policy/CallbackHandler$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iput p3, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/policy/CallbackHandler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$$ExternalSyntheticLambda0;->f$1:Lcom/android/systemui/statusbar/policy/NetworkController$IconState;

    iget p0, p0, Lcom/android/systemui/statusbar/policy/CallbackHandler$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/android/systemui/statusbar/policy/CallbackHandler;->$r8$lambda$xKJ3_ZwtgEBu5y1UhFDHBD2QuK0(Lcom/android/systemui/statusbar/policy/CallbackHandler;Lcom/android/systemui/statusbar/policy/NetworkController$IconState;I)V

    return-void
.end method
