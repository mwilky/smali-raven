.class public final synthetic Lcom/google/android/systemui/gamedashboard/EntryPointController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController$$ExternalSyntheticLambda1;->f$0:I

    iput p2, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController$$ExternalSyntheticLambda1;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController$$ExternalSyntheticLambda1;->f$0:I

    iget p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController$$ExternalSyntheticLambda1;->f$1:I

    check-cast p1, Lcom/android/wm/shell/tasksurfacehelper/TaskSurfaceHelper;

    invoke-static {v0, p0, p1}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->$r8$lambda$c1pD_Zvq6L-o-JTKevSmBLtB43U(IILcom/android/wm/shell/tasksurfacehelper/TaskSurfaceHelper;)V

    return-void
.end method
