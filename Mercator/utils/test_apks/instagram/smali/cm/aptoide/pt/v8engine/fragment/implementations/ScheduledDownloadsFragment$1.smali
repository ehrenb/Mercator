.class synthetic Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$1;
.super Ljava/lang/Object;
.source "ScheduledDownloadsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$cm$aptoide$pt$utils$GenericDialogs$EResponse:[I

.field static final synthetic $SwitchMap$cm$aptoide$pt$v8engine$fragment$implementations$ScheduledDownloadsFragment$OpenMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 112
    invoke-static {}, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->values()[Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$1;->$SwitchMap$cm$aptoide$pt$utils$GenericDialogs$EResponse:[I

    :try_start_0
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$1;->$SwitchMap$cm$aptoide$pt$utils$GenericDialogs$EResponse:[I

    sget-object v1, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->YES:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    invoke-virtual {v1}, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$1;->$SwitchMap$cm$aptoide$pt$utils$GenericDialogs$EResponse:[I

    sget-object v1, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->NO:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    invoke-virtual {v1}, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$1;->$SwitchMap$cm$aptoide$pt$utils$GenericDialogs$EResponse:[I

    sget-object v1, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->CANCEL:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    invoke-virtual {v1}, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    .line 105
    :goto_2
    invoke-static {}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$OpenMode;->values()[Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$OpenMode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$1;->$SwitchMap$cm$aptoide$pt$v8engine$fragment$implementations$ScheduledDownloadsFragment$OpenMode:[I

    :try_start_3
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$1;->$SwitchMap$cm$aptoide$pt$v8engine$fragment$implementations$ScheduledDownloadsFragment$OpenMode:[I

    sget-object v1, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$OpenMode;->normal:Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$OpenMode;

    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$OpenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$1;->$SwitchMap$cm$aptoide$pt$v8engine$fragment$implementations$ScheduledDownloadsFragment$OpenMode:[I

    sget-object v1, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$OpenMode;->AskInstallAll:Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$OpenMode;

    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/fragment/implementations/ScheduledDownloadsFragment$OpenMode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3

    .line 112
    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0
.end method
