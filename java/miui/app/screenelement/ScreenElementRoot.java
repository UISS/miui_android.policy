// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: packimports(3) nonlb 

package miui.app.screenelement;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.text.TextUtils;
import android.util.Log;
import android.view.*;
import java.util.*;
import miui.app.screenelement.data.DateTimeVariableUpdater;
import miui.app.screenelement.data.VariableBinder;
import miui.app.screenelement.data.VariableBinderManager;
import miui.app.screenelement.data.VariableUpdaterManager;
import miui.app.screenelement.elements.ButtonScreenElement;
import miui.app.screenelement.elements.ElementGroup;
import miui.app.screenelement.elements.FramerateController;
import miui.app.screenelement.elements.ScreenElement;
import miui.app.screenelement.util.IndexedNumberVariable;
import miui.app.screenelement.util.Task;
import miui.app.screenelement.util.Utils;
import org.w3c.dom.Element;

// Referenced classes of package miui.app.screenelement:
//            InteractiveListener, ScreenContext, ScreenElementLoadException, ExternalCommandManager, 
//            ResourceManager, SoundManager, RendererController

public class ScreenElementRoot extends ScreenElement
    implements InteractiveListener {

    public ScreenElementRoot(ScreenContext screencontext) {
        super(null, screencontext, null);
        DEFAULT_FRAME_RATE = 30F;
        mNormalFrameRate = DEFAULT_FRAME_RATE;
        mFramerateControllers = new ArrayList();
        super.mRoot = this;
        mVariableUpdaterManager = new VariableUpdaterManager(screencontext);
        mScreenWidth = new IndexedNumberVariable("screen_width", getContext().mVariables);
        mScreenHeight = new IndexedNumberVariable("screen_height", getContext().mVariables);
        mTouchX = new IndexedNumberVariable("touch_x", getContext().mVariables);
        mTouchY = new IndexedNumberVariable("touch_y", getContext().mVariables);
        mTouchBeginX = new IndexedNumberVariable("touch_begin_x", getContext().mVariables);
        mTouchBeginY = new IndexedNumberVariable("touch_begin_y", getContext().mVariables);
        mTouchBeginTime = new IndexedNumberVariable("touch_begin_time", getContext().mVariables);
        onAddVariableUpdater(mVariableUpdaterManager);
    }

    public void addFramerateController(FramerateController frameratecontroller) {
        mFramerateControllers.add(frameratecontroller);
    }

    protected ElementGroup createElementGroup(Element element, ScreenContext screencontext) throws ScreenElementLoadException {
        return new ElementGroup(element, screencontext, this);
    }

    public FramerateTokenList.FramerateToken createFramerateToken(String s) {
        return super.mContext.createToken(s);
    }

    public void doneRender() {
        super.mContext.doneRender();
    }

    public VariableBinder findBinder(String s) {
        VariableBinder variablebinder;
        if(mVariableBinderManager != null)
            variablebinder = mVariableBinderManager.findBinder(s);
        else
            variablebinder = null;
        return variablebinder;
    }

    public ScreenElement findElement(String s) {
        if(!"__root".equals(s)) {
            ScreenElement screenelement;
            if(mElementGroup != null)
                screenelement = mElementGroup.findElement(s);
            else
                screenelement = null;
            this = screenelement;
        }
        return this;
    }

    public Task findTask(String s) {
        return null;
    }

    /**
     * @deprecated Method finish is deprecated
     */

    public void finish() {
        this;
        JVM INSTR monitorenter ;
        boolean flag = mFinished;
        if(!flag) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        if(mElementGroup != null) {
            mElementGroup.finish();
            mElementGroup = null;
        }
        if(mVariableBinderManager != null) {
            mVariableBinderManager.finish();
            mVariableBinderManager = null;
        }
        if(mExternalCommandManager != null) {
            mExternalCommandManager.finish();
            mExternalCommandManager = null;
        }
        if(mVariableUpdaterManager != null) {
            mVariableUpdaterManager.finish();
            mVariableUpdaterManager = null;
        }
        super.mContext.mResourceManager.clear();
        if(mSoundManager != null) {
            mSoundManager.release();
            mSoundManager = null;
        }
        mFinished = true;
        if(true) goto _L1; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public ScreenContext getContext() {
        return super.mContext;
    }

    public int getDefaultScreenWidth() {
        return mDefaultScreenWidth;
    }

    public int getResourceDensity() {
        return mDefaultResourceDensity;
    }

    public float getScale() {
        float f;
        if(mScale == 0.0F) {
            Log.w("ScreenElementRoot", "scale not initialized!");
            f = 1.0F;
        } else {
            f = mScale;
        }
        return f;
    }

    public int getTargetDensity() {
        return mTargetDensity;
    }

    public void haptic(int i) {
    }

    public void init() {
        super.init();
        if(mElementGroup != null)
            mElementGroup.init();
        if(mVariableBinderManager != null)
            mVariableBinderManager.init();
        if(mExternalCommandManager != null)
            mExternalCommandManager.init();
        if(mVariableUpdaterManager != null)
            mVariableUpdaterManager.init();
        requestFramerate(mFrameRate);
    }

    public boolean load() {
        Element element;
        String s = super.mContext.mContext.getResources().getConfiguration().locale.getLanguage();
        element = super.mContext.mResourceManager.getManifestRoot(s);
        if(element != null) goto _L2; else goto _L1
_L1:
        boolean flag = false;
          goto _L3
_L2:
        int i;
        mNormalFrameRate = Utils.getAttrAsFloat(element, "frameRate", DEFAULT_FRAME_RATE);
        mFrameRate = mNormalFrameRate;
        i = Utils.getAttrAsInt(element, "screenWidth", 0);
        Element element1;
        VariableBinderManager variablebindermanager;
        Element element2;
        Display display;
        int j;
        int k;
        int l;
        int i1;
        int j1;
        if(i <= 0)
            i = 480;
        mDefaultScreenWidth = i;
        mDefaultResourceDensity = (240 * mDefaultScreenWidth) / 480;
        super.mContext.setResourceDensity(mDefaultResourceDensity);
        mElementGroup = createElementGroup(element, super.mContext);
        element1 = Utils.getChild(element, "VariableBinders");
        variablebindermanager = new VariableBinderManager(element1, super.mContext);
        mVariableBinderManager = variablebindermanager;
        element2 = Utils.getChild(element, "ExternalCommands");
        if(element2 != null) {
            ExternalCommandManager externalcommandmanager = new ExternalCommandManager(element2, super.mContext, this);
            mExternalCommandManager = externalcommandmanager;
        }
        display = ((WindowManager)super.mContext.mContext.getSystemService("window")).getDefaultDisplay();
        j = display.getWidth();
        k = display.getHeight();
        l = display.getRotation();
        Exception exception;
        ScreenElementLoadException screenelementloadexception;
        boolean flag1;
        int k1;
        String s1;
        String as[];
        int l1;
        int i2;
        int j2;
        int k2;
        String s2;
        NumberFormatException numberformatexception;
        int l2;
        int i3;
        if(l == 1 || l == 3)
            flag1 = true;
        else
            flag1 = false;
        break MISSING_BLOCK_LABEL_561;
_L16:
        if(mTargetDensity != 0) goto _L5; else goto _L4
_L4:
        mScale = (float)i1 / (float)mDefaultScreenWidth;
        mTargetDensity = Math.round((float)mDefaultResourceDensity * mScale);
_L13:
        Log.i("ScreenElementRoot", (new StringBuilder()).append("init target density: ").append(mTargetDensity).toString());
        super.mContext.setTargetDensity(mTargetDensity);
        mScreenWidth.set((float)i1 / mScale);
        mScreenHeight.set((float)j1 / mScale);
        k1 = mDefaultScreenWidth;
        if(i1 == k1) goto _L7; else goto _L6
_L6:
        s1 = element.getAttribute("extraResourcesScreenWidth");
        if(TextUtils.isEmpty(s1)) goto _L7; else goto _L8
_L8:
        as = s1.split(",");
        l1 = 0x7fffffff;
        i2 = 0;
        j2 = as.length;
        k2 = 0;
_L14:
        if(k2 >= j2) goto _L10; else goto _L9
_L9:
        s2 = as[k2];
        l2 = Integer.parseInt(s2);
        i3 = Math.abs(i1 - l2);
        if(i3 >= l1) goto _L12; else goto _L11
_L11:
        l1 = i3;
        i2 = l2;
        if(i3 != 0) goto _L12; else goto _L10
_L10:
        if(Math.abs(i1 - mDefaultScreenWidth) >= l1)
            super.mContext.setExtraResource(i2);
_L7:
        flag = onLoad(element);
          goto _L3
_L5:
        mScale = (float)mTargetDensity / (float)mDefaultResourceDensity;
          goto _L13
        screenelementloadexception;
        screenelementloadexception.printStackTrace();
_L15:
        flag = false;
          goto _L3
        numberformatexception;
_L12:
        k2++;
          goto _L14
        exception;
        exception.printStackTrace();
          goto _L15
_L3:
        return flag;
        if(flag1)
            i1 = k;
        else
            i1 = j;
        if(flag1)
            j1 = j;
        else
            j1 = k;
          goto _L16
    }

    protected void onAddVariableUpdater(VariableUpdaterManager variableupdatermanager) {
        variableupdatermanager.add(new DateTimeVariableUpdater(variableupdatermanager));
    }

    public void onButtonInteractive(ButtonScreenElement buttonscreenelement, miui.app.screenelement.elements.ButtonScreenElement.ButtonAction buttonaction) {
    }

    public void onCommand(String s) {
        if(mExternalCommandManager == null)
            break MISSING_BLOCK_LABEL_15;
        mExternalCommandManager.onCommand(s);
_L1:
        return;
        Exception exception;
        exception;
        Log.e("ScreenElementRoot", exception.toString());
        exception.printStackTrace();
          goto _L1
    }

    protected boolean onLoad(Element element) {
        return true;
    }

    public boolean onTouch(MotionEvent motionevent) {
        if(mElementGroup != null) goto _L2; else goto _L1
_L1:
        boolean flag = false;
_L7:
        return flag;
_L2:
        float f;
        float f1;
        f = descale(motionevent.getX());
        f1 = descale(motionevent.getY());
        mTouchX.set(f);
        mTouchY.set(f1);
        motionevent.getActionMasked();
        JVM INSTR tableswitch 0 2: default 80
    //                   0 97
    //                   1 80
    //                   2 80;
           goto _L3 _L4 _L3 _L3
_L3:
        flag = mElementGroup.onTouch(motionevent);
        requestUpdate();
          goto _L5
_L4:
        mTouchBeginX.set(f);
        mTouchBeginY.set(f1);
        mTouchBeginTime.set(System.currentTimeMillis());
        if(true) goto _L3; else goto _L5
_L5:
        if(true) goto _L7; else goto _L6
_L6:
    }

    public void pause() {
        super.pause();
        if(mElementGroup != null)
            mElementGroup.pause();
        if(mVariableBinderManager != null)
            mVariableBinderManager.pause();
        if(mExternalCommandManager != null)
            mExternalCommandManager.pause();
        if(mVariableUpdaterManager != null)
            mVariableUpdaterManager.pause();
    }

    public void playSound(String s) {
        if(!TextUtils.isEmpty(s) && shouldPlaySound()) {
            if(mSoundManager == null)
                mSoundManager = new SoundManager(super.mContext.mContext, super.mContext.mResourceManager);
            mSoundManager.playSound(s, true);
        }
    }

    public void render(Canvas canvas) {
        if(mElementGroup != null)
            mElementGroup.render(canvas);
        mFrames = 1 + mFrames;
    }

    public void reset() {
        super.reset();
        if(mElementGroup != null)
            mElementGroup.reset();
    }

    public void resume() {
        super.resume();
        if(mElementGroup != null)
            mElementGroup.resume();
        if(mVariableBinderManager != null)
            mVariableBinderManager.resume();
        if(mExternalCommandManager != null)
            mExternalCommandManager.resume();
        if(mVariableUpdaterManager != null)
            mVariableUpdaterManager.resume();
        requestUpdate();
    }

    public void setDefaultFramerate(float f) {
        DEFAULT_FRAME_RATE = f;
    }

    public void setRenderController(RendererController renderercontroller) {
        super.mContext.setRenderController(renderercontroller);
    }

    public void setTargetDensity(int i) {
        mTargetDensity = i;
        super.mContext.setTargetDensity(i);
    }

    public void setView(View view) {
        super.mContext.mView = view;
    }

    protected boolean shouldPlaySound() {
        return true;
    }

    public boolean shouldUpdate() {
        return super.mContext.shouldUpdate();
    }

    public void tick(long l) {
        mVariableUpdaterManager.tick(l);
        if(mElementGroup != null)
            mElementGroup.tick(l);
    }

    public void update(long l, Canvas canvas) {
        tick(l);
        render(canvas);
        doneRender();
    }

    public void updateFramerate(long l) {
        for(Iterator iterator = mFramerateControllers.iterator(); iterator.hasNext(); ((FramerateController)iterator.next()).updateFramerate(l));
        if(mFrameRateVar == null) {
            mFrameRateVar = new IndexedNumberVariable("frame_rate", super.mContext.mVariables);
            mCheckPoint = 0L;
        }
        if(mCheckPoint != 0L) goto _L2; else goto _L1
_L1:
        mCheckPoint = l;
_L4:
        return;
_L2:
        long l1 = l - mCheckPoint;
        if(l1 >= 1000L) {
            long l2 = (long)(1000 * mFrames) / l1;
            mFrameRateVar.set(l2);
            mFrames = 0;
            mCheckPoint = l;
        }
        if(true) goto _L4; else goto _L3
_L3:
    }

    private static final boolean CALCULATE_FRAME_RATE = true;
    private static final int DEFAULT_SCREEN_WIDTH = 480;
    private static final String LOG_TAG = "ScreenElementRoot";
    private static final int RES_DENSITY = 240;
    private static final String ROOT_NAME = "__root";
    private float DEFAULT_FRAME_RATE;
    private long mCheckPoint;
    private int mDefaultResourceDensity;
    private int mDefaultScreenWidth;
    protected ElementGroup mElementGroup;
    private ExternalCommandManager mExternalCommandManager;
    private boolean mFinished;
    protected float mFrameRate;
    private IndexedNumberVariable mFrameRateVar;
    private ArrayList mFramerateControllers;
    private int mFrames;
    protected float mNormalFrameRate;
    private float mScale;
    private IndexedNumberVariable mScreenHeight;
    private IndexedNumberVariable mScreenWidth;
    private SoundManager mSoundManager;
    private int mTargetDensity;
    private IndexedNumberVariable mTouchBeginTime;
    private IndexedNumberVariable mTouchBeginX;
    private IndexedNumberVariable mTouchBeginY;
    private IndexedNumberVariable mTouchX;
    private IndexedNumberVariable mTouchY;
    protected VariableBinderManager mVariableBinderManager;
    private VariableUpdaterManager mVariableUpdaterManager;
}
