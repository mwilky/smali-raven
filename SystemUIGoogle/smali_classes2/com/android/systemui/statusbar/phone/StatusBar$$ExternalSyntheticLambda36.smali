.class public final synthetic Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda36;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;ZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda36;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda36;->f$1:Z

    iput p3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda36;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda36;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda36;->f$1:Z

    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$$ExternalSyntheticLambda36;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->$r8$lambda$b-yhwQvMQpLzSzW5iGGOrw9cWrw(Lcom/android/systemui/statusbar/phone/StatusBar;ZI)V

    return-void
.end method
