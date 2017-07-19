
#include "cuda_runtime.h"
#include "device_launch_parameters.h"

#include <stdio.h>
#include <iostream>
#include <cuda_runtime.h>

using namespace std;

int main()
{
	cudaDeviceProp prop;
	int count;
	cudaGetDeviceCount(&count);
	for (int i = 0; i < count; ++i)
	{
		cudaGetDeviceProperties(&prop, i);
		cout << "---Deneral Information for device---" << i << endl;
		cout << "Name:" << prop.name << endl;
		cout << "Computer capablility:" << prop.major << prop.minor << endl;
		cout << "Clock rate:" << prop.clockRate << endl;
		cout << "Device copy overlap:";
		if (prop.deviceOverlap)
			cout << "Enabled" << endl;
		else
			cout << "Disabled" << endl;
		cout << endl;
		cout << "---Memory information for device---" << i << endl;
		cout << "Total global mem:" << prop.totalGlobalMem << endl;
		cout << "Total constant mem:" << prop.totalConstMem << endl;
		cout << "Max mem pitch:" << prop.memPitch << endl;
		cout << "Texture alignment:" << prop.textureAlignment << endl;
		cout << endl;
		cout << "---MP informations for device---" << i << endl;
		cout << "Shared mem per mp:" << prop.sharedMemPerBlock << endl;
		cout << "Registers per mp:" << prop.regsPerBlock << endl;
		cout << "Threads in warp:" << prop.warpSize << endl;
		cout << "Max threads per block:" << prop.maxThreadsPerBlock << endl;
		cout << "Max thread dimensions:" << prop.maxThreadsDim[0] << " " << prop.maxThreadsDim[1] << " " << prop.maxThreadsDim[2] << endl;
		cout << "Max grid dimensions:" << prop.maxGridSize[0] << " " << prop.maxGridSize[1] << " " << prop.maxGridSize[2] << endl;
	}
	system("pause");
	return 0;
}