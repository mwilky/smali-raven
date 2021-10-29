.class public final synthetic Lcom/google/android/systemui/gamedashboard/ShortcutBarController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/systemui/gamedashboard/FpsController$Callback;


# instance fields
.field public final synthetic f$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/systemui/gamedashboard/ShortcutBarView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    return-void
.end method


# virtual methods
.method public final onFpsUpdated(F)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/ShortcutBarController$$ExternalSyntheticLambda0;->f$0:Lcom/google/android/systemui/gamedashboard/ShortcutBarView;

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarView;->setFps(F)V

    return-void
.end method
