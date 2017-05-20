.class public Lcm/aptoide/pt/util/ScreenTrackingUtils;
.super Ljava/lang/Object;
.source "ScreenTrackingUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/util/ScreenTrackingUtils$ScreenUtilsHelper;,
        Lcm/aptoide/pt/util/ScreenTrackingUtils$LifeCycle;
    }
.end annotation


# static fields
.field static final LIFE_CYCLE_STATE:Ljava/lang/String; = "LIFE_CYCLE_STATE"

.field static final NUMBER_OF_SCREENS:Ljava/lang/String; = "NUMBER_OF_SCREENS"

.field static final NUMBER_OF_SCREENS_ON_BACK_STACK:Ljava/lang/String; = "NUMBER_OF_SCREENS_ON_BACK_STACK"

.field static final SCREEN_HISTORY:Ljava/lang/String; = "SCREEN_HISTORY"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private MAX_HISTORY:I

.field private history:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private numberScreensOnBackStack:I

.field private totalNumberScreens:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcm/aptoide/pt/util/ScreenTrackingUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/util/ScreenTrackingUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/util/ScreenTrackingUtils;->history:Ljava/util/ArrayList;

    .line 18
    const/16 v0, 0xa

    iput v0, p0, Lcm/aptoide/pt/util/ScreenTrackingUtils;->MAX_HISTORY:I

    .line 20
    iput v1, p0, Lcm/aptoide/pt/util/ScreenTrackingUtils;->totalNumberScreens:I

    .line 22
    iput v1, p0, Lcm/aptoide/pt/util/ScreenTrackingUtils;->numberScreensOnBackStack:I

    .line 26
    return-void
.end method

.method synthetic constructor <init>(Lcm/aptoide/pt/util/ScreenTrackingUtils$1;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcm/aptoide/pt/util/ScreenTrackingUtils;-><init>()V

    return-void
.end method

.method public static getInstance()Lcm/aptoide/pt/util/ScreenTrackingUtils;
    .locals 1

    .prologue
    .line 34
    # getter for: Lcm/aptoide/pt/util/ScreenTrackingUtils$ScreenUtilsHelper;->INSTANCE:Lcm/aptoide/pt/util/ScreenTrackingUtils;
    invoke-static {}, Lcm/aptoide/pt/util/ScreenTrackingUtils$ScreenUtilsHelper;->access$000()Lcm/aptoide/pt/util/ScreenTrackingUtils;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addScreenToHistory(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lcm/aptoide/pt/util/ScreenTrackingUtils;->history:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcm/aptoide/pt/util/ScreenTrackingUtils;->MAX_HISTORY:I

    if-lt v0, v1, :cond_0

    .line 44
    iget-object v0, p0, Lcm/aptoide/pt/util/ScreenTrackingUtils;->history:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 46
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/util/ScreenTrackingUtils;->history:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    const-string v1, "SCREEN_HISTORY"

    iget-object v2, p0, Lcm/aptoide/pt/util/ScreenTrackingUtils;->history:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    sget-object v0, Lcm/aptoide/pt/util/ScreenTrackingUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addScreenToHistory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcm/aptoide/pt/util/ScreenTrackingUtils;->history:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public decrementNumberOfScreens()V
    .locals 3

    .prologue
    .line 72
    iget v0, p0, Lcm/aptoide/pt/util/ScreenTrackingUtils;->numberScreensOnBackStack:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcm/aptoide/pt/util/ScreenTrackingUtils;->numberScreensOnBackStack:I

    .line 73
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    const-string v1, "NUMBER_OF_SCREENS_ON_BACK_STACK"

    iget v2, p0, Lcm/aptoide/pt/util/ScreenTrackingUtils;->numberScreensOnBackStack:I

    .line 74
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    const-string v1, "LIFE_CYCLE_STATE"

    sget-object v2, Lcm/aptoide/pt/util/ScreenTrackingUtils$LifeCycle;->DESTROY:Lcm/aptoide/pt/util/ScreenTrackingUtils$LifeCycle;

    invoke-virtual {v2}, Lcm/aptoide/pt/util/ScreenTrackingUtils$LifeCycle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    sget-object v0, Lcm/aptoide/pt/util/ScreenTrackingUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decrementNumberOfScreens: NOSOBS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcm/aptoide/pt/util/ScreenTrackingUtils;->numberScreensOnBackStack:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public incrementNumberOfScreens()V
    .locals 3

    .prologue
    .line 56
    iget v0, p0, Lcm/aptoide/pt/util/ScreenTrackingUtils;->totalNumberScreens:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcm/aptoide/pt/util/ScreenTrackingUtils;->totalNumberScreens:I

    .line 57
    iget v0, p0, Lcm/aptoide/pt/util/ScreenTrackingUtils;->numberScreensOnBackStack:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcm/aptoide/pt/util/ScreenTrackingUtils;->numberScreensOnBackStack:I

    .line 58
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    const-string v1, "NUMBER_OF_SCREENS"

    iget v2, p0, Lcm/aptoide/pt/util/ScreenTrackingUtils;->totalNumberScreens:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    const-string v1, "NUMBER_OF_SCREENS_ON_BACK_STACK"

    iget v2, p0, Lcm/aptoide/pt/util/ScreenTrackingUtils;->numberScreensOnBackStack:I

    .line 60
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    const-string v1, "LIFE_CYCLE_STATE"

    sget-object v2, Lcm/aptoide/pt/util/ScreenTrackingUtils$LifeCycle;->CREATE:Lcm/aptoide/pt/util/ScreenTrackingUtils$LifeCycle;

    invoke-virtual {v2}, Lcm/aptoide/pt/util/ScreenTrackingUtils$LifeCycle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    sget-object v0, Lcm/aptoide/pt/util/ScreenTrackingUtils;->TAG:Ljava/lang/String;

    const-string v1, "incrementNumberOfScreens: NOS: NUMBER_OF_SCREENS, NOSOBS: NUMBER_OF_SCREENS_ON_BACK_STACK"

    invoke-static {v0, v1}, Lcm/aptoide/pt/logger/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method
