.class public final synthetic Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$$ExternalSyntheticLambda0;->f$2:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$$ExternalSyntheticLambda0;->f$2:Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;

    invoke-static {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;->$r8$lambda$75RyiYyH0N_JH-mWdLtJY-DJxYY(Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/logging/NotificationLogger$ExpansionStateLogger$State;)V

    return-void
.end method
