.class public Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;
.super Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;
.source "AppViewFlagThisWidget.java"


# annotations
.annotation runtime Lcm/aptoide/pt/v8engine/view/recycler/widget/Displayables;
    value = {
        Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewFlagThisDisplayable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget",
        "<",
        "Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewFlagThisDisplayable;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private fakeAppLayout:Landroid/view/View;

.field private fakeAppText:Landroid/widget/TextView;

.field private flagsLayoutWrapper:Landroid/view/View;

.field private goodAppLayoutWrapper:Landroid/view/View;

.field private needsLicenceText:Landroid/widget/TextView;

.field private needsLicenseLayout:Landroid/view/View;

.field private final viewIdTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;",
            ">;"
        }
    .end annotation
.end field

.field private virusLayout:Landroid/view/View;

.field private virusText:Landroid/widget/TextView;

.field private workingWellLayout:Landroid/view/View;

.field private workingWellText:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/Widget;-><init>(Landroid/view/View;)V

    .line 53
    new-instance v0, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;

    invoke-direct {v0}, Lcm/aptoide/pt/networkclient/util/HashMapNotNull;-><init>()V

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;->viewIdTypeMap:Ljava/util/Map;

    .line 54
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;->viewIdTypeMap:Ljava/util/Map;

    sget v1, Lcm/aptoide/pt/v8engine/R$id;->working_well_layout:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;->GOOD:Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;->viewIdTypeMap:Ljava/util/Map;

    sget v1, Lcm/aptoide/pt/v8engine/R$id;->needs_licence_layout:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;->LICENSE:Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;->viewIdTypeMap:Ljava/util/Map;

    sget v1, Lcm/aptoide/pt/v8engine/R$id;->fake_app_layout:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;->FAKE:Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;->viewIdTypeMap:Ljava/util/Map;

    sget v1, Lcm/aptoide/pt/v8engine/R$id;->virus_layout:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;->VIRUS:Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method private applyCount(Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;I)V
    .locals 6

    .prologue
    .line 110
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 111
    sget-object v1, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget$1;->$SwitchMap$cm$aptoide$pt$model$v7$GetAppMeta$GetAppMetaFile$Flags$Vote$Type:[I

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 137
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find Type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :pswitch_0
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;->workingWellText:Landroid/widget/TextView;

    .line 114
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    :goto_0
    :pswitch_1
    return-void

    .line 118
    :pswitch_2
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;->virusText:Landroid/widget/TextView;

    .line 119
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 123
    :pswitch_3
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;->fakeAppText:Landroid/widget/TextView;

    .line 124
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 128
    :pswitch_4
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;->needsLicenceText:Landroid/widget/TextView;

    .line 129
    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch
.end method

.method private bindFlagViews(Lcm/aptoide/pt/model/v7/GetAppMeta$App;)V
    .locals 3

    .prologue
    .line 91
    :try_start_0
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getFile()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getFlags()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags;->getVotes()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags;->getVotes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags;->getVotes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote;

    .line 94
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote;->getType()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;

    move-result-object v2

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote;->getCount()I

    move-result v0

    invoke-direct {p0, v2, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;->applyCount(Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 102
    :cond_0
    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getStore()Lcm/aptoide/pt/model/v7/store/Store;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/store/Store;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getFile()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->getMd5sum()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;->handleButtonClick(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v0

    .line 103
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;->workingWellLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;->needsLicenseLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;->fakeAppLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;->virusLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    return-void
.end method

.method private handleButtonClick(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View$OnClickListener;
    .locals 1

    .prologue
    .line 142
    invoke-static {p0, p1, p2}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget$$Lambda$1;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View$OnClickListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$null$0(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/accountmanager/AptoideAccountManager;->openAccountManager(Landroid/content/Context;)V

    .line 147
    return-void
.end method

.method private setAllButtonsUnPressed(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 234
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;->workingWellLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 235
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;->needsLicenseLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 236
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;->fakeAppLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 237
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;->virusLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 238
    invoke-virtual {p1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 239
    invoke-virtual {p1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 240
    return-void
.end method

.method private setButtonPressed(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 225
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 226
    invoke-virtual {p1, v1}, Landroid/view/View;->setPressed(Z)V

    .line 227
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;->workingWellLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 228
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;->needsLicenseLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 229
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;->fakeAppLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 230
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;->virusLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 231
    return-void
.end method


# virtual methods
.method protected assignViews(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 61
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->good_app_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;->goodAppLayoutWrapper:Landroid/view/View;

    .line 62
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->rating_flags_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;->flagsLayoutWrapper:Landroid/view/View;

    .line 64
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->working_well_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;->workingWellLayout:Landroid/view/View;

    .line 65
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->needs_licence_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;->needsLicenseLayout:Landroid/view/View;

    .line 66
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->fake_app_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;->fakeAppLayout:Landroid/view/View;

    .line 67
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->virus_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;->virusLayout:Landroid/view/View;

    .line 69
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->working_well_count:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;->workingWellText:Landroid/widget/TextView;

    .line 70
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->needs_licence_count:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;->needsLicenceText:Landroid/widget/TextView;

    .line 71
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->fake_app_count:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;->fakeAppText:Landroid/widget/TextView;

    .line 72
    sget v0, Lcm/aptoide/pt/v8engine/R$id;->virus_count:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;->virusText:Landroid/widget/TextView;

    .line 73
    return-void
.end method

.method public bridge synthetic bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/Displayable;)V
    .locals 0

    .prologue
    .line 31
    check-cast p1, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewFlagThisDisplayable;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;->bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewFlagThisDisplayable;)V

    return-void
.end method

.method public bindView(Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewFlagThisDisplayable;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 76
    invoke-virtual {p1}, Lcm/aptoide/pt/v8engine/view/recycler/displayable/implementations/appView/AppViewFlagThisDisplayable;->getPojo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/GetApp;

    .line 77
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetApp;->getNodes()Lcm/aptoide/pt/model/v7/GetApp$Nodes;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetApp$Nodes;->getMeta()Lcm/aptoide/pt/model/v7/GetAppMeta;

    move-result-object v0

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta;->getData()Lcm/aptoide/pt/model/v7/GetAppMeta$App;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$App;->getFile()Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;

    move-result-object v1

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile;->isGoodApp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;->goodAppLayoutWrapper:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;->flagsLayoutWrapper:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 87
    :goto_0
    return-void

    .line 83
    :cond_0
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;->goodAppLayoutWrapper:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 84
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;->flagsLayoutWrapper:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 85
    invoke-direct {p0, v0}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;->bindFlagViews(Lcm/aptoide/pt/model/v7/GetAppMeta$App;)V

    goto :goto_0
.end method

.method synthetic lambda$handleButtonClick$3(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 4

    .prologue
    .line 144
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->isLoggedIn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->you_need_to_be_logged_in:I

    sget v1, Lcm/aptoide/pt/v8engine/R$string;->login:I

    invoke-static {}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget$$Lambda$2;->lambdaFactory$()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-static {p3, v0, v1, v2}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/view/View;IILandroid/view/View$OnClickListener;)V

    .line 221
    :goto_0
    return-void

    .line 152
    :cond_0
    invoke-direct {p0, p3}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;->setButtonPressed(Landroid/view/View;)V

    .line 154
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;->viewIdTypeMap:Ljava/util/Map;

    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;

    .line 156
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;->compositeSubscription:Lrx/j/b;

    invoke-virtual {v0}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 157
    invoke-static {}, Lcm/aptoide/accountmanager/AptoideAccountManager;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    .line 156
    invoke-static {p1, p2, v2, v3}, Lcm/aptoide/pt/dataprovider/ws/v3/AddApkFlagRequest;->of(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcm/aptoide/pt/dataprovider/ws/v3/AddApkFlagRequest;

    move-result-object v2

    const/4 v3, 0x1

    .line 158
    invoke-virtual {v2, v3}, Lcm/aptoide/pt/dataprovider/ws/v3/AddApkFlagRequest;->observe(Z)Lrx/d;

    move-result-object v2

    .line 159
    invoke-static {}, Lrx/a/b/a;->a()Lrx/g;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/d;->a(Lrx/g;)Lrx/d;

    move-result-object v2

    invoke-static {p0, v0, p3}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget$$Lambda$3;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;Landroid/view/View;)Lrx/b/b;

    move-result-object v0

    invoke-static {p0, p3}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget$$Lambda$4;->lambdaFactory$(Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;Landroid/view/View;)Lrx/b/b;

    move-result-object v3

    .line 160
    invoke-virtual {v2, v0, v3}, Lrx/d;->a(Lrx/b/b;Lrx/b/b;)Lrx/k;

    move-result-object v0

    .line 156
    invoke-virtual {v1, v0}, Lrx/j/b;->a(Lrx/k;)V

    goto :goto_0
.end method

.method synthetic lambda$null$1(Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;Landroid/view/View;Lcm/aptoide/pt/dataprovider/ws/v2/GenericResponseV2;)V
    .locals 8

    .prologue
    const/4 v0, 0x1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 161
    invoke-virtual {p3}, Lcm/aptoide/pt/dataprovider/ws/v2/GenericResponseV2;->isOk()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Lcm/aptoide/pt/dataprovider/ws/v2/GenericResponseV2;->hasErrors()Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    const/4 v1, 0x0

    .line 163
    sget-object v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget$1;->$SwitchMap$cm$aptoide$pt$model$v7$GetAppMeta$GetAppMetaFile$Flags$Vote$Type:[I

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 199
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find Type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcm/aptoide/pt/model/v7/GetAppMeta$GetAppMetaFile$Flags$Vote$Type;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :pswitch_0
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;->workingWellText:Landroid/widget/TextView;

    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v2

    new-instance v3, Ljava/math/BigDecimal;

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;->workingWellText:Landroid/widget/TextView;

    .line 168
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 167
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    add-double/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    .line 166
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    :goto_0
    if-eqz v0, :cond_0

    .line 203
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->vote_submitted:I

    invoke-static {p2, v0}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/view/View;I)V

    .line 216
    :goto_1
    return-void

    .line 174
    :pswitch_1
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;->needsLicenceText:Landroid/widget/TextView;

    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v2

    new-instance v3, Ljava/math/BigDecimal;

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;->needsLicenceText:Landroid/widget/TextView;

    .line 176
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 175
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    add-double/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    .line 174
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 182
    :pswitch_2
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;->fakeAppText:Landroid/widget/TextView;

    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v2

    new-instance v3, Ljava/math/BigDecimal;

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;->fakeAppText:Landroid/widget/TextView;

    .line 184
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 183
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    add-double/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    .line 182
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 189
    :pswitch_3
    iget-object v1, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;->virusText:Landroid/widget/TextView;

    invoke-static {}, Ljava/text/NumberFormat;->getIntegerInstance()Ljava/text/NumberFormat;

    move-result-object v2

    new-instance v3, Ljava/math/BigDecimal;

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;->virusText:Landroid/widget/TextView;

    .line 191
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 190
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    add-double/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    .line 189
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_4
    move v0, v1

    .line 196
    goto :goto_0

    .line 208
    :cond_0
    invoke-virtual {p3}, Lcm/aptoide/pt/dataprovider/ws/v2/GenericResponseV2;->hasErrors()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    invoke-virtual {p3}, Lcm/aptoide/pt/dataprovider/ws/v2/GenericResponseV2;->getErrors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcm/aptoide/pt/dataprovider/ws/v2/ErrorResponse;

    .line 210
    sget-object v2, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Lcm/aptoide/pt/dataprovider/ws/v2/ErrorResponse;->getErrorDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcm/aptoide/pt/logger/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 214
    :cond_1
    invoke-direct {p0, p2}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;->setAllButtonsUnPressed(Landroid/view/View;)V

    .line 215
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->unknown_error:I

    invoke-static {p2, v0}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/view/View;I)V

    goto/16 :goto_1

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method synthetic lambda$null$2(Landroid/view/View;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 217
    invoke-static {}, Lcm/aptoide/pt/crashreports/CrashReport;->getInstance()Lcm/aptoide/pt/crashreports/CrashReport;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcm/aptoide/pt/crashreports/CrashReport;->log(Ljava/lang/Throwable;)V

    .line 218
    invoke-direct {p0, p1}, Lcm/aptoide/pt/v8engine/view/recycler/widget/implementations/appView/AppViewFlagThisWidget;->setAllButtonsUnPressed(Landroid/view/View;)V

    .line 219
    sget v0, Lcm/aptoide/pt/v8engine/R$string;->unknown_error:I

    invoke-static {p1, v0}, Lcm/aptoide/pt/utils/design/ShowMessage;->asSnack(Landroid/view/View;I)V

    .line 220
    return-void
.end method
