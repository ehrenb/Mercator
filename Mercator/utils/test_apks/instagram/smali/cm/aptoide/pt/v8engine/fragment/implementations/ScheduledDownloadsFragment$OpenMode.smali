.class public final enum Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$OpenMode;
.super Ljava/lang/Enum;
.source "ScheduledDownloadsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OpenMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$OpenMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$OpenMode;

.field public static final enum AskInstallAll:Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$OpenMode;

.field public static final enum normal:Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$OpenMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 299
    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$OpenMode;

    const-string v1, "normal"

    invoke-direct {v0, v1, v2}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$OpenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$OpenMode;->normal:Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$OpenMode;

    .line 300
    new-instance v0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$OpenMode;

    const-string v1, "AskInstallAll"

    invoke-direct {v0, v1, v3}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$OpenMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$OpenMode;->AskInstallAll:Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$OpenMode;

    .line 298
    const/4 v0, 0x2

    new-array v0, v0, [Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$OpenMode;

    sget-object v1, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$OpenMode;->normal:Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$OpenMode;

    aput-object v1, v0, v2

    sget-object v1, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$OpenMode;->AskInstallAll:Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$OpenMode;

    aput-object v1, v0, v3

    sput-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$OpenMode;->$VALUES:[Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$OpenMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 298
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$OpenMode;
    .locals 1

    .prologue
    .line 298
    const-class v0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$OpenMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$OpenMode;

    return-object v0
.end method

.method public static values()[Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$OpenMode;
    .locals 1

    .prologue
    .line 298
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$OpenMode;->$VALUES:[Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$OpenMode;

    invoke-virtual {v0}, [Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$OpenMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$OpenMode;

    return-object v0
.end method
